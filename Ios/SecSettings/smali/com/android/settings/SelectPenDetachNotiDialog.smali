.class public Lcom/android/settings/SelectPenDetachNotiDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SelectPenDetachNotiDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field audioManager:Landroid/media/AudioManager;

.field private mCurrentNotiPos:I

.field mCurrentSelection:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

.field private mPreviousNotiPos:I

.field private sfx:Landroid/media/Ringtone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 61
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 68
    iput-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

    .line 70
    iput v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    .line 72
    iput v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentNotiPos:I

    .line 73
    iput v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPreviousNotiPos:I

    .line 75
    iput-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    return-void
.end method


# virtual methods
.method public getCurrentSelection()I
    .locals 4

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_detachment_notification"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, currentNotiSound:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/PenSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 191
    .local v1, index:I
    return v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 197
    packed-switch p2, :pswitch_data_0

    .line 215
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 204
    .local v0, position:I
    sget-object v2, Lcom/android/settings/PenSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_detachment_notification"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 207
    const-string v2, "SelectPenDetachNotiDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick[OK] - position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / saved Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->finish()V

    goto :goto_0

    .line 212
    .end local v0           #position:I
    .end local v1           #value:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->finish()V

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/SelectPenDetachNotiDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->audioManager:Landroid/media/AudioManager;

    .line 82
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings/SelectPenDetachNotiDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 84
    iget-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/android/settings/SelectPenDetachNotiAdapter;

    sget-object v2, Lcom/android/settings/PenSettings;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v4, v2}, Lcom/android/settings/SelectPenDetachNotiAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 94
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090aba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 95
    iget-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040057

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 96
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    const v1, 0x7f09011a

    invoke-virtual {p0, v1}, Lcom/android/settings/SelectPenDetachNotiDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 99
    const v1, 0x7f0907f6

    invoke-virtual {p0, v1}, Lcom/android/settings/SelectPenDetachNotiDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 101
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0b00e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    .line 102
    iget-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->setupAlert()V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->getCurrentSelection()I

    move-result v1

    iput v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    .line 108
    iget v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 109
    const-string v1, "SelectPenDetachNotiDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() positoin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v1, "SelectPenDetachNotiDialog"

    const-string v2, "onCreate() positoin : -1"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x5

    .line 131
    const-string v6, "SelectPenDetachNotiDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput p3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentNotiPos:I

    .line 143
    sget-object v6, Lcom/android/settings/PenSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 145
    .local v5, soundURIs:Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 157
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentNotiPos:I

    .line 181
    :goto_0
    :pswitch_0
    return-void

    .line 151
    :pswitch_1
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, index:I
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, previewSound:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 154
    .local v1, mPreviewUri:Landroid/net/Uri;
    const-string v6, "SelectPenDetachNotiDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "previewSound : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->audioManager:Landroid/media/AudioManager;

    if-eqz v6, :cond_2

    .line 162
    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 163
    .local v2, masterStreamVolume:I
    int-to-float v6, v2

    const/high16 v7, 0x40e0

    div-float/2addr v6, v7

    const v7, 0x3e99999a

    mul-float v3, v6, v7

    .line 166
    .local v3, penSoundVolume:F
    iget v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentNotiPos:I

    iget v7, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPreviousNotiPos:I

    if-eq v6, v7, :cond_0

    .line 167
    iget v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentNotiPos:I

    iput v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPreviousNotiPos:I

    .line 168
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    .line 171
    :cond_0
    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    if-eqz v6, :cond_1

    .line 172
    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    invoke-virtual {v6, v9}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 174
    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    invoke-virtual {v6}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 176
    :cond_1
    const-string v6, "SelectPenDetachNotiDialog"

    const-string v7, "There is no Ringtone."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    .end local v2           #masterStreamVolume:I
    .end local v3           #penSoundVolume:F
    :cond_2
    const-string v6, "SelectPenDetachNotiDialog"

    const-string v7, "audioManager is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 219
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 126
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 120
    return-void
.end method
