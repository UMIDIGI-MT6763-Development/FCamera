.class final Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;
.super Landroid/os/Handler;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/jpeg/encoder/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-static {p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->access$200(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-static {v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->access$300(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)Lcom/freeme/camera/common/jpeg/encoder/ImageReader$OnImageAvailableListener;

    move-result-object v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-static {p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->access$400(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-static {p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->access$500(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)Z

    move-result p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$ListenerHandler;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$OnImageAvailableListener;->onImageAvailable(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
