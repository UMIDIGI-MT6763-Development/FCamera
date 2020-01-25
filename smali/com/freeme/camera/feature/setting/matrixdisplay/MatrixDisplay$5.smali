.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;
.super Ljava/lang/Object;
.source "MatrixDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->initializeValue(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

.field final synthetic val$defaultEffect:Ljava/lang/String;

.field final synthetic val$supportedEffects:Ljava/util/List;

.field final synthetic val$supportedPreviewSize:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->val$supportedEffects:Ljava/util/List;

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->val$defaultEffect:Ljava/lang/String;

    iput-object p4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->val$supportedPreviewSize:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->val$supportedEffects:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$600(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v1

    const-string v2, "key_color_effect"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->val$defaultEffect:Ljava/lang/String;

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$502(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "com.freeme.camera.feature.mode.pip.photo.PipPhotoMode"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$700(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.freeme.camera.feature.mode.pip.video.PipVideoMode"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$700(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    const-string v1, "none"

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$502(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[initializeValue], in pip mode, set effect as none"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$900(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$500(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/IMatrixDisplayConfig;->setSelectedEffect(Ljava/lang/String;)V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$500(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->val$supportedPreviewSize:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1102(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay$5;->val$supportedEffects:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->access$1202(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    :goto_0
    return-void
.end method
