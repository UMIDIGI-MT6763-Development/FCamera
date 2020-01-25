.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;
.super Ljava/lang/Object;
.source "MatrixDisplayViewManager.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)V

    return-void
.end method


# virtual methods
.method public onScrollDone(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;II)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollDone(), startPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    move p1, p2

    :goto_0
    if-ge p1, p3, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v1, p1, 0xc

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;->onEffectUpdated(II)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-nez p2, :cond_3

    move p2, p3

    :goto_1
    add-int/lit8 v0, p3, 0x3

    if-ge p2, v0, :cond_5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;->onEffectUpdated(II)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p2, -0x1

    :goto_2
    add-int/lit8 v0, p2, -0x3

    if-lt p3, v0, :cond_5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;->onEffectUpdated(II)V

    :cond_4
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public onScrollOut(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;I)V
    .locals 1

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "onScrollOut()"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {p2, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$2602(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$600(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$600(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;->onViewScrollOut()V

    :cond_0
    return-void
.end method
