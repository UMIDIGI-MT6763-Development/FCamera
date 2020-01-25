.class Lcom/freeme/camera/feature/setting/focus/FocusView$ActiveFocusEndAction;
.super Ljava/lang/Object;
.source "FocusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/focus/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveFocusEndAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/FocusView;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/setting/focus/FocusView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView$ActiveFocusEndAction;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/setting/focus/FocusView;Lcom/freeme/camera/feature/setting/focus/FocusView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusView$ActiveFocusEndAction;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusView;->access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ActiveFocusEndAction run +] mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusView$ActiveFocusEndAction;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusView;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/focus/FocusView;->access$500(Lcom/freeme/camera/feature/setting/focus/FocusView;)Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView$ActiveFocusEndAction;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
