<?php

namespace App\Http\Controllers\Session;

use App\Models\CMS\Alerts;
use App\Models\User\User_Badges;
use Auth;
use App\Http\Controllers\Controller;
use App\Models\CMS\News;
use App\Models\Hotel\Friendship;

class MeController extends Controller
{
    public function index()
    {
        $badges = User_Badges::query()->where('user_id', auth()->id())->take(32)->get();
        $news = News::query()->orderBy('date', 'DESC')->take(3)->get();
        $friends = Friendship::query() ->where('user_one_id', auth()->id())->inRandomOrder()->take(5)->get();
        $friendOnlineCount = Friendship::query()
            ->whereHas('habbo', function ($query) {
                $query->where('online', '1');
            })
            ->where('user_one_id', auth()->id())
            ->get();
        $alerts = Alerts::query()->latest('id')->get();


        return view('pages.me.me', [
                'badges' => $badges,
                'news' => $news,
                'currency' => Auth::user()->currency,
                'group' => 'me',
                'friends' => $friends,
                'onlineFriends' => $friendOnlineCount,
                'alerts' => $alerts,
            ]
        );
    }

    public function destroy($id)
    {
        \App\Models\CMS\Alerts::where('userid', Auth()->User()->id)->orWhere('id', $id)->delete();
        return redirect()->back();
    }

    public function search()
    {
        $user = \App\Models\User\User::where('username', request()->get('search'))->first();
        if ($user) {
            return redirect('/home/' . request()->get('search'));
        } else {
            return redirect()->back()->withErrors('User not Found.');
        }
    }
}
