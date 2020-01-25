.class Lcom/freeme/camera/OnScreenHint$1;
.super Ljava/lang/Object;
.source "OnScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/OnScreenHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/OnScreenHint;


# direct methods
.method constructor <init>(Lcom/freeme/camera/OnScreenHint;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/OnScreenHint$1;->this$0:Lcom/freeme/camera/OnScreenHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint$1;->this$0:Lcom/freeme/camera/OnScreenHint;

    invoke-static {v0}, Lcom/freeme/camera/OnScreenHint;->access$000(Lcom/freeme/camera/OnScreenHint;)V

    return-void
.end method
