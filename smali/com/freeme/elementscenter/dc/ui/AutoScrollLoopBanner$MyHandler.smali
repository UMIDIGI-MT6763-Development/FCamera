.class Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner$MyHandler;
.super Landroid/os/Handler;
.source "AutoScrollLoopBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;


# direct methods
.method private constructor <init>(Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner$MyHandler;->this$0:Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner$MyHandler;-><init>(Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner$MyHandler;->this$0:Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;

    invoke-virtual {p1}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->scrollOnce()V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner$MyHandler;->this$0:Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;

    invoke-static {p1}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->access$100(Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->access$200(Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;J)V

    :goto_0
    return-void
.end method
