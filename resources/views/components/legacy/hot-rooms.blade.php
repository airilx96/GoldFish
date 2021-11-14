@props(['rooms' => $rooms])
<style>
    .hot-rooms {
        display: grid;
        grid-template-columns: 1fr 4fr 5fr 3fr;
        gap: 20px;
        font-size: 12px;
    }

    .hot-rooms > div > p {
        margin-top: 8px;
    }
</style>
<div class="legacy-box habbos">
    <div class="heading">{{ __('Hot rooms') }}</div>
    <div class="content">
            @foreach($rooms as $room)
                <div class="hot-rooms">
                    <div>
                        {{-- TODO: Load room icon depending on the % of active users compared to max users --}}
                        <img src="https://mansionplay.com/assets/images/web/pages/community/rooms/room_icon_1.gif" alt="">
                    </div>
                    <div>
                        <p>{{ $room->name }}</p>
                    </div>
                    <div>
                        <p>Owner: {{ $room->owner_name }}</p>
                    </div>
                    <div>
                        <p>Users: {{ $room->users }}/{{ $room->users_max }}</p>
                    </div>
                </div>

            @endforeach

    </div>
</div>
