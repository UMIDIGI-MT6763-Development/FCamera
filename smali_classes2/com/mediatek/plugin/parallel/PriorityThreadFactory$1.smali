.class Lcom/mediatek/plugin/parallel/PriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "ProrityThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/plugin/parallel/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/plugin/parallel/PriorityThreadFactory;


# direct methods
.method constructor <init>(Lcom/mediatek/plugin/parallel/PriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/plugin/parallel/PriorityThreadFactory$1;->this$0:Lcom/mediatek/plugin/parallel/PriorityThreadFactory;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/parallel/PriorityThreadFactory$1;->this$0:Lcom/mediatek/plugin/parallel/PriorityThreadFactory;

    invoke-static {v0}, Lcom/mediatek/plugin/parallel/PriorityThreadFactory;->access$000(Lcom/mediatek/plugin/parallel/PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
