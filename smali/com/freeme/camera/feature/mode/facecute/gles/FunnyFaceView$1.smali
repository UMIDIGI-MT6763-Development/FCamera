.class Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$1;
.super Ljava/lang/Thread;
.source "FunnyFaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->switchEffectInWorkThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$1;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$1;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$300(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$400(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;Ljava/lang/String;)V

    return-void
.end method
