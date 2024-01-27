class TeacherFeedback {
  final int id;
  final String content;
  final bool selected;

  TeacherFeedback({
    required this.id,
    required this.content,
    this.selected = false,
  });

  TeacherFeedback copyWith({
    int? id,
    String? content,
    bool? selected,
  }) {
    return TeacherFeedback(
      id: id ?? this.id,
      content: content ?? this.content,
      selected: selected ?? this.selected,
    );
  }
}
