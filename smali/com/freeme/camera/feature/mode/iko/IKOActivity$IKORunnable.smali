.class Lcom/freeme/camera/feature/mode/iko/IKOActivity$IKORunnable;
.super Ljava/lang/Object;
.source "IKOActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/iko/IKOActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IKORunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$IKORunnable;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/mode/iko/IKOActivity;Lcom/freeme/camera/feature/mode/iko/IKOActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOActivity$IKORunnable;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->getInstance()Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOActivity$IKORunnable;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOActivity;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/iko/IKOActivity;->access$100(Lcom/freeme/camera/feature/mode/iko/IKOActivity;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->loadIKOBean([B)V

    return-void
.end method
