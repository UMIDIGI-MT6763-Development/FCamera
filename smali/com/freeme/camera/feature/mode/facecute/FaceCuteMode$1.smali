.class Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$1;
.super Ljava/lang/Object;
.source "FaceCuteMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$FunnyPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$1;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFunnyPictureTaken([BII)V
    .locals 0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$1;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {p2, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$200(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;[B)V

    return-void
.end method
