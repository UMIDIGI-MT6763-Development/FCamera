.class public Lcom/freeme/camera/data/Preloader;
.super Ljava/lang/Object;
.source "Preloader.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/data/Preloader$ItemLoader;,
        Lcom/freeme/camera/data/Preloader$ItemSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mItemLoadTokens:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/List<",
            "TY;>;>;"
        }
    .end annotation
.end field

.field private mItemLoader:Lcom/freeme/camera/data/Preloader$ItemLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freeme/camera/data/Preloader$ItemLoader<",
            "TT;TY;>;"
        }
    .end annotation
.end field

.field private mItemSource:Lcom/freeme/camera/data/Preloader$ItemSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freeme/camera/data/Preloader$ItemSource<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mLastEnd:I

.field private mLastStart:I

.field private mLastVisibleItem:I

.field private final mLoadAheadItems:I

.field private final mMaxConcurrentPreloads:I

.field private mScrollingDown:Z


# direct methods
.method public constructor <init>(ILcom/freeme/camera/data/Preloader$ItemSource;Lcom/freeme/camera/data/Preloader$ItemLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/freeme/camera/data/Preloader$ItemSource<",
            "TT;>;",
            "Lcom/freeme/camera/data/Preloader$ItemLoader<",
            "TT;TY;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/data/Preloader;->mLastEnd:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/data/Preloader;->mItemLoadTokens:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/data/Preloader;->mScrollingDown:Z

    iput-object p2, p0, Lcom/freeme/camera/data/Preloader;->mItemSource:Lcom/freeme/camera/data/Preloader$ItemSource;

    iput-object p3, p0, Lcom/freeme/camera/data/Preloader;->mItemLoader:Lcom/freeme/camera/data/Preloader$ItemLoader;

    iput p1, p0, Lcom/freeme/camera/data/Preloader;->mLoadAheadItems:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/freeme/camera/data/Preloader;->mMaxConcurrentPreloads:I

    return-void
.end method

.method private preload(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/freeme/camera/data/Preloader;->mLastEnd:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/freeme/camera/data/Preloader;->mLoadAheadItems:I

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/freeme/camera/data/Preloader;->mItemSource:Lcom/freeme/camera/data/Preloader$ItemSource;

    invoke-interface {v1}, Lcom/freeme/camera/data/Preloader$ItemSource;->getCount()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/freeme/camera/data/Preloader;->mLoadAheadItems:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/freeme/camera/data/Preloader;->mLastStart:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/freeme/camera/data/Preloader;->mLastEnd:I

    iput v0, p0, Lcom/freeme/camera/data/Preloader;->mLastStart:I

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/data/Preloader;->mItemSource:Lcom/freeme/camera/data/Preloader$ItemSource;

    invoke-interface {v1, v0, p1}, Lcom/freeme/camera/data/Preloader$ItemSource;->getItemsInRange(II)Ljava/util/List;

    move-result-object p1

    if-nez p2, :cond_2

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_2
    iget-object p2, p0, Lcom/freeme/camera/data/Preloader;->mItemLoader:Lcom/freeme/camera/data/Preloader$ItemLoader;

    invoke-interface {p2, p1}, Lcom/freeme/camera/data/Preloader$ItemLoader;->preloadItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/data/Preloader;->registerLoadTokens(Ljava/util/List;)V

    return-void
.end method

.method private registerLoadTokens(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TY;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/data/Preloader;->mItemLoadTokens:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/freeme/camera/data/Preloader;->mItemLoadTokens:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    iget v0, p0, Lcom/freeme/camera/data/Preloader;->mMaxConcurrentPreloads:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/data/Preloader;->mItemLoadTokens:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/freeme/camera/data/Preloader;->mItemLoader:Lcom/freeme/camera/data/Preloader$ItemLoader;

    invoke-interface {v0, p1}, Lcom/freeme/camera/data/Preloader$ItemLoader;->cancelItems(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAllLoads()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/data/Preloader;->mItemLoadTokens:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/freeme/camera/data/Preloader;->mItemLoader:Lcom/freeme/camera/data/Preloader$ItemLoader;

    invoke-interface {v2, v1}, Lcom/freeme/camera/data/Preloader$ItemLoader;->cancelItems(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/data/Preloader;->mItemLoadTokens:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-boolean p1, p0, Lcom/freeme/camera/data/Preloader;->mScrollingDown:Z

    iget p4, p0, Lcom/freeme/camera/data/Preloader;->mLastVisibleItem:I

    const/4 v0, -0x1

    if-le p2, p4, :cond_0

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/freeme/camera/data/Preloader;->mScrollingDown:Z

    add-int/2addr p3, p2

    goto :goto_0

    :cond_0
    if-ge p2, p4, :cond_1

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/freeme/camera/data/Preloader;->mScrollingDown:Z

    move p3, p2

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    iget-boolean p4, p0, Lcom/freeme/camera/data/Preloader;->mScrollingDown:Z

    if-eq p1, p4, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/data/Preloader;->cancelAllLoads()V

    :cond_2
    if-eq p3, v0, :cond_3

    iget-boolean p1, p0, Lcom/freeme/camera/data/Preloader;->mScrollingDown:Z

    invoke-direct {p0, p3, p1}, Lcom/freeme/camera/data/Preloader;->preload(IZ)V

    :cond_3
    iput p2, p0, Lcom/freeme/camera/data/Preloader;->mLastVisibleItem:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
