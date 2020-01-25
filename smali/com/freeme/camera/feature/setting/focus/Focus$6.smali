.class Lcom/freeme/camera/feature/setting/focus/Focus$6;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/Focus;->showFlashCalibrationResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

.field final synthetic val$isSuccess:Z


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/Focus;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$6;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/focus/Focus$6;->val$isSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$6;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1000(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showFlashCalibrationResult] isSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus$6;->val$isSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$6;->val$isSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$6;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$2900(Lcom/freeme/camera/feature/setting/focus/Focus;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f00c3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$6;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$3000(Lcom/freeme/camera/feature/setting/focus/Focus;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f00c2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$6;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$3100(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/IAppUi$HintInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus$6;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$3200(Lcom/freeme/camera/feature/setting/focus/Focus;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080100

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$6;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$3100(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/IAppUi$HintInfo;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/IAppUi$HintType;->TYPE_ALWAYS_TOP:Lcom/freeme/camera/common/IAppUi$HintType;

    iput-object v2, v1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mType:Lcom/freeme/camera/common/IAppUi$HintType;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$6;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$3100(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/IAppUi$HintInfo;

    move-result-object v1

    iput-object v0, v1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$6;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$3300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$6;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$3100(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/IAppUi$HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->hideScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$6;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$3400(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$6;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$3100(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/IAppUi$HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->showScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    return-void
.end method
