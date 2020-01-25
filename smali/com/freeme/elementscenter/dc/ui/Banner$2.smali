.class Lcom/freeme/elementscenter/dc/ui/Banner$2;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/elementscenter/dc/ui/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/elementscenter/dc/ui/Banner;


# direct methods
.method constructor <init>(Lcom/freeme/elementscenter/dc/ui/Banner;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$2;->this$0:Lcom/freeme/elementscenter/dc/ui/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$2;->this$0:Lcom/freeme/elementscenter/dc/ui/Banner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->hideScrollingIndicator(Z)V

    return-void
.end method
