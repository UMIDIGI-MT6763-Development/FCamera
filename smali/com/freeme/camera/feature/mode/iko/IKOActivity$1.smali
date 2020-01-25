.class Lcom/freeme/camera/feature/mode/iko/IKOActivity$1;
.super Ljava/lang/Object;
.source "IKOActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/iko/IKOActivity;->onLoadStart()V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$1;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->getInstance()Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$1;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->showLoading(Landroid/content/Context;)V

    return-void
.end method
