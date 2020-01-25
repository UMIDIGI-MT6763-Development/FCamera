.class public Lcom/freeme/camera/CameraDataAdapter;
.super Ljava/lang/Object;
.source "CameraDataAdapter.java"

# interfaces
.implements Lcom/freeme/camera/data/LocalDataAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;,
        Lcom/freeme/camera/CameraDataAdapter$DeletionTask;,
        Lcom/freeme/camera/CameraDataAdapter$QueryTask;,
        Lcom/freeme/camera/CameraDataAdapter$QueryTaskResult;,
        Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_DECODE_SIZE:I = 0x640


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mImages:Lcom/freeme/camera/data/LocalDataList;

.field private mLastPhotoId:J

.field private mListener:Lcom/freeme/camera/filmstrip/DataAdapter$Listener;

.field private mLocalDataListener:Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;

.field private mLocalDataToDelete:Lcom/freeme/camera/data/LocalData;

.field private final mPlaceHolderResourceId:I

.field private mSuggestedHeight:I

.field private mSuggestedWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x640

    iput v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mSuggestedWidth:I

    iput v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mSuggestedHeight:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mLastPhotoId:J

    iput-object p1, p0, Lcom/freeme/camera/CameraDataAdapter;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/freeme/camera/data/LocalDataList;

    invoke-direct {p1}, Lcom/freeme/camera/data/LocalDataList;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    iput p2, p0, Lcom/freeme/camera/CameraDataAdapter;->mPlaceHolderResourceId:I

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/CameraDataAdapter;)J
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mLastPhotoId:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/freeme/camera/CameraDataAdapter;J)J
    .locals 0

    iput-wide p1, p0, Lcom/freeme/camera/CameraDataAdapter;->mLastPhotoId:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/freeme/camera/CameraDataAdapter;Lcom/freeme/camera/data/LocalDataList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/CameraDataAdapter;->replaceData(Lcom/freeme/camera/data/LocalDataList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/CameraDataAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/CameraDataAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/CameraDataAdapter;)Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/CameraDataAdapter;->mLocalDataListener:Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/CameraDataAdapter;)Lcom/freeme/camera/data/LocalDataList;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/CameraDataAdapter;)Lcom/freeme/camera/filmstrip/DataAdapter$Listener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/CameraDataAdapter;->mListener:Lcom/freeme/camera/filmstrip/DataAdapter$Listener;

    return-object p0
.end method

.method private insertData(Lcom/freeme/camera/data/LocalData;)V
    .locals 3

    new-instance v0, Lcom/freeme/camera/data/LocalData$NewestFirstComparator;

    invoke-direct {v0}, Lcom/freeme/camera/data/LocalData$NewestFirstComparator;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v2}, Lcom/freeme/camera/data/LocalDataList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v2, v1}, Lcom/freeme/camera/data/LocalDataList;->get(I)Lcom/freeme/camera/data/LocalData;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/data/LocalDataList;->add(ILcom/freeme/camera/data/LocalData;)V

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mListener:Lcom/freeme/camera/filmstrip/DataAdapter$Listener;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1, p1}, Lcom/freeme/camera/filmstrip/DataAdapter$Listener;->onDataInserted(ILcom/freeme/camera/filmstrip/ImageData;)V

    :cond_1
    return-void
.end method

.method private replaceData(Lcom/freeme/camera/data/LocalDataList;)V
    .locals 1

    invoke-virtual {p1}, Lcom/freeme/camera/data/LocalDataList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0}, Lcom/freeme/camera/data/LocalDataList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    iget-object p1, p0, Lcom/freeme/camera/CameraDataAdapter;->mListener:Lcom/freeme/camera/filmstrip/DataAdapter$Listener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/freeme/camera/filmstrip/DataAdapter$Listener;->onDataLoaded()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addData(Lcom/freeme/camera/data/LocalData;)Z
    .locals 2

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/CameraDataAdapter;->findDataByContentUri(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/freeme/camera/CameraDataAdapter;->updateData(ILcom/freeme/camera/data/LocalData;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/CameraDataAdapter;->insertData(Lcom/freeme/camera/data/LocalData;)V

    const/4 p1, 0x1

    return p1
.end method

.method public canSwipeInFullScreen(I)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0}, Lcom/freeme/camera/data/LocalDataList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/data/LocalDataList;->get(I)Lcom/freeme/camera/data/LocalData;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->canSwipeInFullScreen()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public cancelItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/AsyncTask;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public executeDeletion()Z
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mLocalDataToDelete:Lcom/freeme/camera/data/LocalData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/freeme/camera/CameraDataAdapter$DeletionTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/freeme/camera/CameraDataAdapter$DeletionTask;-><init>(Lcom/freeme/camera/CameraDataAdapter;Lcom/freeme/camera/CameraDataAdapter$1;)V

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/freeme/camera/data/LocalData;

    iget-object v5, p0, Lcom/freeme/camera/CameraDataAdapter;->mLocalDataToDelete:Lcom/freeme/camera/data/LocalData;

    aput-object v5, v4, v1

    invoke-virtual {v0, v4}, Lcom/freeme/camera/CameraDataAdapter$DeletionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-object v2, p0, Lcom/freeme/camera/CameraDataAdapter;->mLocalDataToDelete:Lcom/freeme/camera/data/LocalData;

    return v3
.end method

.method public findDataByContentUri(Landroid/net/Uri;)I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/data/LocalDataList;->indexOf(Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method public flush()V
    .locals 1

    new-instance v0, Lcom/freeme/camera/data/LocalDataList;

    invoke-direct {v0}, Lcom/freeme/camera/data/LocalDataList;-><init>()V

    invoke-direct {p0, v0}, Lcom/freeme/camera/CameraDataAdapter;->replaceData(Lcom/freeme/camera/data/LocalDataList;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/CameraDataAdapter;->getTotalNumber()I

    move-result v0

    return v0
.end method

.method public getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraDataAdapter;->getLocalData(I)Lcom/freeme/camera/data/LocalData;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0}, Lcom/freeme/camera/data/LocalDataList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/data/LocalDataList;->get(I)Lcom/freeme/camera/data/LocalData;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getItemViewType()Lcom/freeme/camera/data/LocalDataViewType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/data/LocalDataViewType;->ordinal()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getItemsInRange(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLocalData(I)Lcom/freeme/camera/data/LocalData;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0}, Lcom/freeme/camera/data/LocalDataList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/data/LocalDataList;->get(I)Lcom/freeme/camera/data/LocalData;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocalDataList()Lcom/freeme/camera/data/LocalDataList;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    return-object v0
.end method

.method public getTotalNumber()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0}, Lcom/freeme/camera/data/LocalDataList;->size()I

    move-result v0

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;ILcom/freeme/camera/data/LocalData$ActionCallback;)Landroid/view/View;
    .locals 10

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0}, Lcom/freeme/camera/data/LocalDataList;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0, p3}, Lcom/freeme/camera/data/LocalDataList;->get(I)Lcom/freeme/camera/data/LocalData;

    move-result-object v1

    iget v4, p0, Lcom/freeme/camera/CameraDataAdapter;->mSuggestedWidth:I

    iget v5, p0, Lcom/freeme/camera/CameraDataAdapter;->mSuggestedHeight:I

    iget v6, p0, Lcom/freeme/camera/CameraDataAdapter;->mPlaceHolderResourceId:I

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p0

    move-object v9, p4

    invoke-interface/range {v1 .. v9}, Lcom/freeme/camera/data/LocalData;->getView(Landroid/content/Context;Landroid/view/View;IIILcom/freeme/camera/data/LocalDataAdapter;ZLcom/freeme/camera/data/LocalData$ActionCallback;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isMetadataUpdated(I)Z
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0}, Lcom/freeme/camera/data/LocalDataList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/data/LocalDataList;->get(I)Lcom/freeme/camera/data/LocalData;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->isMetadataUpdated()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public preloadItems(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/freeme/camera/CameraDataAdapter;->isMetadataUpdated(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/freeme/camera/CameraDataAdapter;->updateMetadata(I)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public refresh(Landroid/net/Uri;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraDataAdapter;->findDataByContentUri(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/data/LocalDataList;->get(I)Lcom/freeme/camera/data/LocalData;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/CameraDataAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/freeme/camera/data/LocalData;->refresh(Landroid/content/Context;)Lcom/freeme/camera/data/LocalData;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/freeme/camera/CameraDataAdapter;->mListener:Lcom/freeme/camera/filmstrip/DataAdapter$Listener;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1, v0}, Lcom/freeme/camera/filmstrip/DataAdapter$Listener;->onDataRemoved(ILcom/freeme/camera/filmstrip/ImageData;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/freeme/camera/CameraDataAdapter;->updateData(ILcom/freeme/camera/data/LocalData;)V

    return-void
.end method

.method public removeData(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/data/LocalDataList;->remove(I)Lcom/freeme/camera/data/LocalData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/CameraDataAdapter;->executeDeletion()Z

    iput-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mLocalDataToDelete:Lcom/freeme/camera/data/LocalData;

    iget-object v1, p0, Lcom/freeme/camera/CameraDataAdapter;->mListener:Lcom/freeme/camera/filmstrip/DataAdapter$Listener;

    invoke-interface {v1, p1, v0}, Lcom/freeme/camera/filmstrip/DataAdapter$Listener;->onDataRemoved(ILcom/freeme/camera/filmstrip/ImageData;)V

    return-void
.end method

.method public requestLoad(Lcom/freeme/camera/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freeme/camera/util/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/freeme/camera/CameraDataAdapter$QueryTask;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/CameraDataAdapter$QueryTask;-><init>(Lcom/freeme/camera/CameraDataAdapter;Lcom/freeme/camera/util/Callback;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/content/Context;

    iget-object v1, p0, Lcom/freeme/camera/CameraDataAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {v0, p1}, Lcom/freeme/camera/CameraDataAdapter$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public requestLoadNewPhotos()V
    .locals 4

    new-instance v0, Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;

    iget-wide v1, p0, Lcom/freeme/camera/CameraDataAdapter;->mLastPhotoId:J

    invoke-direct {v0, p0, v1, v2}, Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;-><init>(Lcom/freeme/camera/CameraDataAdapter;J)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/freeme/camera/CameraDataAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public resizeView(Landroid/content/Context;ILandroid/view/View;II)V
    .locals 6

    iget-object p4, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {p4}, Lcom/freeme/camera/data/LocalDataList;->size()I

    move-result p4

    if-ge p2, p4, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {p4, p2}, Lcom/freeme/camera/data/LocalDataList;->get(I)Lcom/freeme/camera/data/LocalData;

    move-result-object v0

    iget v2, p0, Lcom/freeme/camera/CameraDataAdapter;->mSuggestedWidth:I

    iget v3, p0, Lcom/freeme/camera/CameraDataAdapter;->mSuggestedHeight:I

    move-object v1, p1

    move-object v4, p3

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/freeme/camera/data/LocalData;->loadFullImage(Landroid/content/Context;IILandroid/view/View;Lcom/freeme/camera/data/LocalDataAdapter;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setListener(Lcom/freeme/camera/filmstrip/DataAdapter$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraDataAdapter;->mListener:Lcom/freeme/camera/filmstrip/DataAdapter$Listener;

    iget-object p1, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {p1}, Lcom/freeme/camera/data/LocalDataList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/CameraDataAdapter;->mListener:Lcom/freeme/camera/filmstrip/DataAdapter$Listener;

    invoke-interface {p1}, Lcom/freeme/camera/filmstrip/DataAdapter$Listener;->onDataLoaded()V

    :cond_0
    return-void
.end method

.method public setLocalDataListener(Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraDataAdapter;->mLocalDataListener:Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;

    return-void
.end method

.method public suggestViewSizeBound(II)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/CameraDataAdapter;->mSuggestedWidth:I

    iput p2, p0, Lcom/freeme/camera/CameraDataAdapter;->mSuggestedHeight:I

    return-void
.end method

.method public undoDataRemoval()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mLocalDataToDelete:Lcom/freeme/camera/data/LocalData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/freeme/camera/CameraDataAdapter;->mLocalDataToDelete:Lcom/freeme/camera/data/LocalData;

    invoke-direct {p0, v0}, Lcom/freeme/camera/CameraDataAdapter;->insertData(Lcom/freeme/camera/data/LocalData;)V

    const/4 v0, 0x1

    return v0
.end method

.method public updateData(ILcom/freeme/camera/data/LocalData;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter;->mImages:Lcom/freeme/camera/data/LocalDataList;

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/data/LocalDataList;->set(ILcom/freeme/camera/data/LocalData;)V

    iget-object p2, p0, Lcom/freeme/camera/CameraDataAdapter;->mListener:Lcom/freeme/camera/filmstrip/DataAdapter$Listener;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/freeme/camera/CameraDataAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/CameraDataAdapter$1;-><init>(Lcom/freeme/camera/CameraDataAdapter;I)V

    invoke-interface {p2, v0}, Lcom/freeme/camera/filmstrip/DataAdapter$Listener;->onDataUpdated(Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;)V

    :cond_0
    return-void
.end method

.method public updateMetadata(I)Landroid/os/AsyncTask;
    .locals 4

    new-instance v0, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;-><init>(Lcom/freeme/camera/CameraDataAdapter;Lcom/freeme/camera/CameraDataAdapter$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/CameraDataAdapter$MetadataUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method
