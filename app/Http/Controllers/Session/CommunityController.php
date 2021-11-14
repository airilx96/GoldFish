<?php

namespace App\Http\Controllers\Session;

use App\Http\Controllers\Controller;
use App\Models\CMS\News;
use App\Models\Hotel\Room;
use App\Models\User\User;

class CommunityController extends Controller
{
    public function __invoke()
    {
        $news = News::orderBy('date', 'DESC')->take(5)->get();
        $users = User::inRandomOrder()->take(16)->get();
        $randomUsers = User::inRandomOrder()->take(8)->get();
        $rooms = Room::query()
            ->select('id', 'name', 'owner_name', 'users', 'users_max')
            ->take(5)
            ->orderByDesc('users')
            ->get();


        return view('pages.community.community', [
            'news' => $news,
            'group' => 'community',
            'users' => $users,
            'randomUsers' => $randomUsers,
            'rooms' => $rooms
        ]);
    }
}
