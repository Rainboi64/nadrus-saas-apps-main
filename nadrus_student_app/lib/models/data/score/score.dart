import 'package:freezed_annotation/freezed_annotation.dart';

part 'score.freezed.dart';
part 'score.g.dart';

// ----------(json)----------
/*
{
      "deserved_score":""
}
*/
// --------------------------

@freezed
class Score with _$Score {
  const factory Score({dynamic deservedScore}) = _Score;

  factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);
}
