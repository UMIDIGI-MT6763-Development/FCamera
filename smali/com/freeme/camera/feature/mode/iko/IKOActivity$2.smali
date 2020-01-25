.class Lcom/freeme/camera/feature/mode/iko/IKOActivity$2;
.super Ljava/lang/Object;
.source "IKOActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/iko/IKOActivity;->onLoadSuccess(Lcom/freeme/camera/feature/mode/iko/IKOResultBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$2;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->getInstance()Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->stopLoading()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$2;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->access$200(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)V

    return-void
.end method
