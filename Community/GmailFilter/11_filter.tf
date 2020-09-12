//resource gmailfilter_filter "cancel_LeagueOfInfosys2" {
//  criteria {
//    from            = "no-reply@connpass.com"
//    query           = "管理イベント「リーグオブ情シス 第二回 スーパーリーグ #LoI」に参加キャンセルがありました"
//  }
//  action {
//    add_label_ids    = [
//      "Label_6218555293672342318"
//    ]
//    remove_label_ids = [
//      "UNREAD",
//      "INBOX"
//    ]
//  }
//}


resource gmailfilter_filter "bought_techbookfest9" {
  criteria {
    from            = "info@techbookfest.org"
    query           = "[技術書典] 書籍のご購入ありがとうございます"
  }
  action {
    add_label_ids    = [
      gmailfilter_label.label_techbookfest9.id,
      //"Label_4192277650650976917",
      //"Label_726492485209966719"
    ]
    remove_label_ids = [
    ]
  }
}
