.class Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$7;
.super Ljava/lang/Object;
.source "FaceCuteMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->assembleCurrTypeItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$7;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$7;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$2900(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$7;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$700(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/CameraActivity;->getmFunnyFaceView()Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->isSwitching()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$7;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v1, v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$2902(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;I)I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$7;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$2900(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)I

    move-result v0

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/FFBResource;->getEffectById(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$7;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v1, v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$3000(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$7;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$3100(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f08011e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$7;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$3102(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    return-void
.end method
