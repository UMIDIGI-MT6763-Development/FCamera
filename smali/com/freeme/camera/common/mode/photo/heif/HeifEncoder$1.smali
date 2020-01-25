.class Lcom/freeme/camera/common/mode/photo/heif/HeifEncoder$1;
.super Ljava/lang/Object;
.source "HeifEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/mode/photo/heif/HeifEncoder;->addYuvBufferInternal([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/photo/heif/HeifEncoder;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/mode/photo/heif/HeifEncoder;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/photo/heif/HeifEncoder$1;->this$0:Lcom/freeme/camera/common/mode/photo/heif/HeifEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/heif/HeifEncoder$1;->this$0:Lcom/freeme/camera/common/mode/photo/heif/HeifEncoder;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/photo/heif/HeifEncoder;->access$100(Lcom/freeme/camera/common/mode/photo/heif/HeifEncoder;)V

    return-void
.end method
