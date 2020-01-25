.class public Lcom/freeme/camera/data/LocalDataList;
.super Ljava/lang/Object;
.source "LocalDataList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/data/LocalDataList$UriWrapper;
    }
.end annotation


# instance fields
.field private final mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/freeme/camera/data/LocalData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUriMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lcom/freeme/camera/data/LocalData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/data/LocalDataList;->mUriMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(ILcom/freeme/camera/data/LocalData;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/freeme/camera/data/LocalDataList;->mUriMap:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(Lcom/freeme/camera/data/LocalData;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/data/LocalDataList;->mUriMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/data/LocalData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/data/LocalData;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/data/LocalDataList;->add(Lcom/freeme/camera/data/LocalData;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Lcom/freeme/camera/data/LocalData;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/data/LocalData;

    return-object p1
.end method

.method public get(Landroid/net/Uri;)Lcom/freeme/camera/data/LocalData;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/LocalDataList;->mUriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/data/LocalData;

    return-object p1
.end method

.method public indexOf(Landroid/net/Uri;)I
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/data/LocalDataList;->mUriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    new-instance v1, Lcom/freeme/camera/data/LocalDataList$UriWrapper;

    invoke-direct {v1, p1}, Lcom/freeme/camera/data/LocalDataList$UriWrapper;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized remove(I)Lcom/freeme/camera/data/LocalData;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/data/LocalData;

    iget-object v0, p0, Lcom/freeme/camera/data/LocalDataList;->mUriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1
.end method

.method public set(ILcom/freeme/camera/data/LocalData;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/freeme/camera/data/LocalDataList;->mUriMap:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcom/freeme/camera/data/LocalData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/data/LocalDataList;->mList:Ljava/util/LinkedList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
