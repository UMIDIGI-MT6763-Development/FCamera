.class Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$5;
.super Ljava/lang/Object;
.source "SdofPhotoMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$5;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchPositionChanged(I)V
    .locals 0

    return-void
.end method

.method public onVsDofLevelChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$5;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;->setVsDofLevelParameter(I)V

    return-void
.end method
