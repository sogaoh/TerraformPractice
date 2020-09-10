resource gmailfilter_filter "cancel_LeagueOfInfosys2" {
  criteria {
    from            = "no-reply@connpass.com"
    query           = "管理イベント「リーグオブ情シス 第二回 スーパーリーグ #LoI」に参加キャンセルがありました"
  }
  action {
    add_label_ids    = [
      "Label_6218555293672342318"
    ]
    remove_label_ids = [
      "UNREAD",
      "INBOX"
    ]
  }
}
