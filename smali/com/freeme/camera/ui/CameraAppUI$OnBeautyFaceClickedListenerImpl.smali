.class Lcom/freeme/camera/ui/CameraAppUI$OnBeautyFaceClickedListenerImpl;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnBeautyFaceClickedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnBeautyFaceClickedListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$OnBeautyFaceClickedListenerImpl;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnBeautyFaceClickedListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/freeme/camera/ui/CameraAppUI;->isBeautyFaceSwitch:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/freeme/camera/ui/CameraAppUI;->isCameraSwitch:Z

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Lcom/freeme/camera/ui/CameraAppUI;->showPreviewAnim(I)V

    const-string p1, "Photo"

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnBeautyFaceClickedListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1900(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnBeautyFaceClickedListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    const-string v0, "Beauty Face"

    invoke-static {p1, v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$2000(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Beauty Face"

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnBeautyFaceClickedListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1900(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnBeautyFaceClickedListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    const-string v0, "Photo"

    invoke-static {p1, v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$2000(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Video"

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnBeautyFaceClickedListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1900(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnBeautyFaceClickedListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    const-string v0, "Video Beauty Face"

    invoke-static {p1, v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$2000(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "Video Beauty Face"

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$OnBeautyFaceClickedListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1900(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$OnBeautyFaceClickedListenerImpl;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    const-string v0, "Video"

    invoke-static {p1, v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$2000(Lcom/freeme/camera/ui/CameraAppUI;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
