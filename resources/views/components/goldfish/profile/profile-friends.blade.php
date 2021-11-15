@props(['user', 'friends'])

<div class="box blue profile friends">
    <div class="heading">{{ __(':username friends', ['username' => $user->username]) }}</div>
        @forelse($friends as $friend)
            <a href="{{ route('profile.show', $friend->habbo->username) }}">
                <figure class="friend" style="background-image:url({{CMSHelper::settings('habbo_imager')}}{{ $friend->habbo->look }}&direction=4&headonly=1);">
                    {{$friend->habbo->username}}
                </figure>
            </a>
        @empty
            <p class="text-center">{{ __(':username currently has no friends.', ['username' => $user->username]) }}</p>
        @endforelse
</div>