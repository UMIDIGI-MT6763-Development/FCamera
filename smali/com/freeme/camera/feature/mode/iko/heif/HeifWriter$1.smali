.class Lcom/freeme/camera/feature/mode/iko/heif/HeifWriter$1;
.super Ljava/lang/Object;
.source "HeifWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/iko/heif/HeifWriter;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifWriter;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/iko/heif/HeifWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifWriter$1;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/heif/HeifWriter$1;->this$0:Lcom/freeme/camera/feature/mode/iko/heif/HeifWriter;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/heif/HeifWriter;->access$1100(Lcom/freeme/camera/feature/mode/iko/heif/HeifWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
