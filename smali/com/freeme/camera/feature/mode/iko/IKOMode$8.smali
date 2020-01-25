.class Lcom/freeme/camera/feature/mode/iko/IKOMode$8;
.super Ljava/lang/Object;
.source "IKOMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/iko/IKOMode;->onImageAvailable(Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

.field final synthetic val$bytesFromImageAsType:[B


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;[B)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$8;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$8;->val$bytesFromImageAsType:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$8;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$8;->val$bytesFromImageAsType:[B

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$3000(Lcom/freeme/camera/feature/mode/iko/IKOMode;[B)V

    return-void
.end method
