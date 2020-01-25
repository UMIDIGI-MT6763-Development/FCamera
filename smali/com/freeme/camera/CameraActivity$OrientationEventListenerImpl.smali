.class Lcom/freeme/camera/CameraActivity$OrientationEventListenerImpl;
.super Landroid/view/OrientationEventListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/CameraActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity$OrientationEventListenerImpl;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/CameraActivity$OrientationEventListenerImpl;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-static {v0}, Lcom/freeme/camera/CameraActivity;->access$500(Lcom/freeme/camera/CameraActivity;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/CameraActivity$OrientationEventListenerImpl;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-static {v1}, Lcom/freeme/camera/CameraActivity;->access$600(Lcom/freeme/camera/CameraActivity;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/freeme/camera/CameraActivity;->access$700(II)I

    move-result p1

    iget-object v1, p0, Lcom/freeme/camera/CameraActivity$OrientationEventListenerImpl;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-static {v1}, Lcom/freeme/camera/CameraActivity;->access$600(Lcom/freeme/camera/CameraActivity;)I

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/CameraActivity$OrientationEventListenerImpl;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-static {v1, p1}, Lcom/freeme/camera/CameraActivity;->access$602(Lcom/freeme/camera/CameraActivity;I)I

    invoke-static {}, Lcom/freeme/camera/CameraActivity;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/CameraActivity$OrientationEventListenerImpl;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-static {v2}, Lcom/freeme/camera/CameraActivity;->access$600(Lcom/freeme/camera/CameraActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity$OrientationEventListenerImpl;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-static {p1}, Lcom/freeme/camera/CameraActivity;->access$500(Lcom/freeme/camera/CameraActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    iget-object v2, p0, Lcom/freeme/camera/CameraActivity$OrientationEventListenerImpl;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-static {v2}, Lcom/freeme/camera/CameraActivity;->access$600(Lcom/freeme/camera/CameraActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;->onOrientationChanged(I)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
