.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$11;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setItemsAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    .line 1310
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2600(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1312
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 1316
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 1318
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 1319
    .local v0, scrollX:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 1320
    .local v1, scrollY:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1321
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1306
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 1302
    return-void
.end method
