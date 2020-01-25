.class Lcom/freeme/camera/ui/photo/IntentPhotoUi$1;
.super Ljava/lang/Object;
.source "IntentPhotoUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/photo/IntentPhotoUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/photo/IntentPhotoUi;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/photo/IntentPhotoUi;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi$1;->this$0:Lcom/freeme/camera/ui/photo/IntentPhotoUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[mOkButtonListener]"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi$1;->this$0:Lcom/freeme/camera/ui/photo/IntentPhotoUi;

    invoke-static {p1}, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->access$100(Lcom/freeme/camera/ui/photo/IntentPhotoUi;)Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$OkButtonClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi$1;->this$0:Lcom/freeme/camera/ui/photo/IntentPhotoUi;

    invoke-static {p1}, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->access$100(Lcom/freeme/camera/ui/photo/IntentPhotoUi;)Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$OkButtonClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$OkButtonClickListener;->onOkClickClicked()V

    :cond_0
    return-void
.end method
