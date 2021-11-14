@extends('layouts.base')

@section('title', 'Leaderboards')

@section('content')
<div class="container">
  <div class="row">
    <div class="col-lg-4">
      <x-goldfish.community.leaderboard-card title="Credits" type="credits" fetch="credits" color="gold" :leaderboard="$credits"/>
      <x-goldfish.community.leaderboard-card title="Respects Received" type="respects" fetch="respects_received" color="blue" :leaderboard="$respects" :hasRelationship="true"/>
    </div>

    <div class="col-lg-4">
      <x-goldfish.community.leaderboard-card title="Diamonds" type="diamonds" fetch="amount" color="blue" :leaderboard="$diamonds" :hasRelationship="true"/>
      <x-goldfish.community.leaderboard-card title="Achievement Score" type="achievement" fetch="achievement_score" color="red" :leaderboard="$achievement" :hasRelationship="true"/>
    </div>

    <div class="col-lg-4">
      <x-goldfish.community.leaderboard-card title="Duckets" type="duckets" fetch="amount" color="pink" :leaderboard="$duckets" :hasRelationship="true"/>
      <x-goldfish.community.leaderboard-card title="Online Time" type="timeon" fetch="progress" color="orange" :leaderboard="$time" :hasRelationship="true"/>
    </div>
  </div>
</div>
@endsection
