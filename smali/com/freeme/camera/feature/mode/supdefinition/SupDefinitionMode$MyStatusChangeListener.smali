.class Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;
.super Ljava/lang/Object;
.source "SupDefinitionMode.java"

# interfaces
.implements Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;-><init>(Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->access$700()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "key_picture_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "x"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->mCaptureWidth:I

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->mCaptureHeight:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    iget p1, p1, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->mCaptureWidth:I

    const/16 p2, 0x1770

    const/16 v0, 0x1f40

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    iget p1, p1, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->mCaptureHeight:I

    if-eq p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    iput v0, p1, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->mCaptureWidth:I

    iput p2, p1, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->mCaptureHeight:I

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController;

    new-instance p2, Lcom/freeme/camera/common/utils/Size;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    iget v0, v0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->mCaptureWidth:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    iget v1, v1, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->mCaptureHeight:I

    invoke-direct {p2, v0, v1}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {p1, p2}, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController;->setPictureSize(Lcom/freeme/camera/common/utils/Size;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    iget p2, p2, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->mCaptureWidth:I

    int-to-double v0, p2

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    iget p2, p2, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->mCaptureHeight:I

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController;->getPreviewSize(D)Lcom/freeme/camera/common/utils/Size;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->access$1900(Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;)I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->access$2000(Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;)I

    move-result v0

    if-eq p1, v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    invoke-static {v0, p2, p1}, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->access$2100(Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;II)V

    goto :goto_0

    :cond_3
    const-string v0, "key_matrix_display_show"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->access$2202(Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;Z)Z

    goto :goto_0

    :cond_4
    const-string v0, "key_format"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode$MyStatusChangeListener;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController;

    invoke-interface {v0, p2}, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController;->setFormat(Ljava/lang/String;)V

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionMode;->access$700()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", set sCaptureFormat = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method