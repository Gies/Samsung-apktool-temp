.class Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;
.super Landroid/os/Handler;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 645
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 653
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 654
    return-void

    .line 647
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->access$1100(Lcom/android/settings/wifi/WifiEnabler;Z)V

    goto :goto_0

    .line 650
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->access$1100(Lcom/android/settings/wifi/WifiEnabler;Z)V

    goto :goto_0

    .line 645
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
