.class public Lorg/lasque/tusdk/core/secret/StickerAdapter;
.super Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerGroupThumbTaskImageWare;,
        Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerThumbTaskImageWare;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter<",
        "Lorg/lasque/tusdk/core/task/ImageViewTaskWare;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Long;",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Long;",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lorg/lasque/tusdk/core/TuSdkConfigs;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/TuSdkConfigs;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->e:Lorg/lasque/tusdk/core/TuSdkConfigs;

    sget-object p1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->TypeSticker:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->setDownloadTaskType(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->a()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/StickerAdapter;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->g:I

    return p0
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->f:Z

    iput v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->a:Ljava/util/List;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->c:Ljava/util/List;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->d:Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->e:Lorg/lasque/tusdk/core/TuSdkConfigs;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/lasque/tusdk/core/TuSdkConfigs;->stickerCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->e:Lorg/lasque/tusdk/core/TuSdkConfigs;

    iget-object v0, v0, Lorg/lasque/tusdk/core/TuSdkConfigs;->stickerCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    iget-object v2, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->a:Ljava/util/List;

    invoke-virtual {v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->copy()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->tryLoadTaskDataWithCache()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/lasque/tusdk/core/secret/StickerAdapter$1;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/secret/StickerAdapter$1;-><init>(Lorg/lasque/tusdk/core/secret/StickerAdapter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 3

    iget v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    if-lez v0, :cond_0

    iget v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    iput v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    :cond_0
    iget v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    iput v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    :cond_1
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;

    iget-wide v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textId:J

    invoke-virtual {p1, v1, v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getStickerText(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->content:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->content:Ljava/lang/String;

    iput-object v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->content:Ljava/lang/String;

    :cond_5
    iget-object v2, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->color:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v1, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->color:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->color:Ljava/lang/String;

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 7

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->file:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->file:Ljava/lang/String;

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkBundle;->sdkBundleSticker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/lasque/tusdk/core/secret/SdkValid;->loadStickerGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-class v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->b:Ljava/util/Hashtable;

    iget-wide v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    iget-wide v3, v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->id:J

    iget-wide v5, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->categoryId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->append(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V

    :cond_5
    iget-object v1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->file:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->b:Ljava/util/Hashtable;

    iget-wide v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->categoryId:J

    sget-object v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->StickerCategorySmart:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->getValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/FileHelper;->readFile(Ljava/io/File;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->positionInfo:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    goto :goto_0

    :cond_4
    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 6

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->validKey:Ljava/lang/String;

    iput-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->validKey:Ljava/lang/String;

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->file:Ljava/lang/String;

    iput-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->file:Ljava/lang/String;

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->name:Ljava/lang/String;

    iput-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->name:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-wide v2, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    invoke-virtual {p2, v2, v3}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->getSticker(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->d:Ljava/util/Hashtable;

    iget-wide v4, v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    iget v1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->g:I

    goto :goto_0

    :cond_3
    iput-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    return-void

    :cond_4
    :goto_1
    iget-object p1, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->d:Ljava/util/Hashtable;

    iget-wide v1, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->g:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->g:I

    goto :goto_2

    :cond_5
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/StickerAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->f:Z

    return p1
.end method


# virtual methods
.method protected appendDownload(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)Z
    .locals 7

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->appendDownload(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->localDownloadPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->key:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/lasque/tusdk/core/secret/SdkValid;->loadStickerGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-class v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->localDownloadPath()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->file:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->isDownload:Z

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    iget-wide v3, v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->id:J

    iget-wide v5, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->categoryId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->insertFirst(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V

    :cond_5
    iget-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->file:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->b:Ljava/util/Hashtable;

    iget-wide v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object v2, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->d:Ljava/util/Hashtable;

    iget-wide v3, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->g:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->g:I

    goto :goto_1

    :cond_6
    return p1

    :cond_7
    :goto_2
    return v1
.end method

.method protected asyncLoadLocalStickers()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->asyncLoadDownloadDatas()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->e:Lorg/lasque/tusdk/core/TuSdkConfigs;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/lasque/tusdk/core/TuSdkConfigs;->stickerGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->e:Lorg/lasque/tusdk/core/TuSdkConfigs;

    iget-object v1, v1, Lorg/lasque/tusdk/core/TuSdkConfigs;->stickerGroups:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    invoke-direct {p0, v1}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/lasque/tusdk/core/secret/StickerAdapter$2;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/secret/StickerAdapter$2;-><init>(Lorg/lasque/tusdk/core/secret/StickerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected asyncTaskLoadImage(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)Landroid/graphics/Bitmap;
    .locals 5

    instance-of v0, p1, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerGroupThumbTaskImageWare;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerGroupThumbTaskImageWare;

    if-eqz p1, :cond_1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    iget-object v1, p1, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerGroupThumbTaskImageWare;->data:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    iget-wide v1, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    iget-object p1, p1, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerGroupThumbTaskImageWare;->data:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->previewName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lorg/lasque/tusdk/core/secret/SdkValid;->readSticker(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerThumbTaskImageWare;

    if-eqz p1, :cond_1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    iget-object v1, p1, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerThumbTaskImageWare;->data:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-wide v1, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->groupId:J

    iget-object p1, p1, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerThumbTaskImageWare;->data:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-wide v3, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/secret/SdkValid;->readStickerThumb(JJ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public containsGroupId(J)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->b:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected getAllGroupID()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getCacheKey(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerGroupThumbTaskImageWare;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerGroupThumbTaskImageWare;

    iget-object p1, p1, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerGroupThumbTaskImageWare;->data:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->previewName:Ljava/lang/String;

    return-object p1

    :cond_0
    check-cast p1, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerThumbTaskImageWare;

    iget-object p1, p1, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerThumbTaskImageWare;->data:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->previewName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerImageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->previewName:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getCategories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->copy()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCategories(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    iget-wide v1, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->id:J

    invoke-virtual {p0, v1, v2}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->getCategory(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->getCategories()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCategory(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    iget-wide v2, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->copy()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGroupListByType(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;",
            ")",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->StickerCategorySmart:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->c:Ljava/util/List;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSticker(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->d:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->copy()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStickerGroup(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->b:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    return-object p1
.end method

.method public isInited()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->f:Z

    return v0
.end method

.method public loadGroupThumb(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;Landroid/widget/ImageView;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->b:Ljava/util/Hashtable;

    iget-wide v1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerGroupThumbTaskImageWare;

    invoke-direct {v0, p2, p1}, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerGroupThumbTaskImageWare;-><init>(Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->loadImage(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public loadSmartStickerItem(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/StringHelper;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->b:Ljava/util/Hashtable;

    iget-wide v2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-wide v2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    invoke-virtual {v1, v2, v3}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->getSticker(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    iget-wide v1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->groupId:J

    invoke-virtual {v0, v1, v2, p2}, Lorg/lasque/tusdk/core/secret/SdkValid;->readSticker(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public loadStickerItem(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->b:Ljava/util/Hashtable;

    iget-wide v2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-wide v2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    invoke-virtual {v1, v2, v3}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->getSticker(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    sget-object v2, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    iget-wide v3, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->groupId:J

    iget-object v1, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerImageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lorg/lasque/tusdk/core/secret/SdkValid;->readSticker(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->setImage(Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    const/4 p1, 0x1

    return p1
.end method

.method public loadThumb(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;Landroid/widget/ImageView;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->d:Ljava/util/Hashtable;

    iget-wide v1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerThumbTaskImageWare;

    invoke-direct {v0, p2, p1}, Lorg/lasque/tusdk/core/secret/StickerAdapter$StickerThumbTaskImageWare;-><init>(Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->loadImage(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected removeDownloadData(J)V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->b:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    iget-wide v3, v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->id:J

    iget-wide v5, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->categoryId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1, p2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->removeGroup(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->b:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object v3, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->d:Ljava/util/Hashtable;

    iget-wide v4, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->g:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->g:I

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/SdkValid;->removeStickerGroup(J)V

    const-string v0, "remove download stickers [%s]: %s | %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    iget p1, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->g:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    iget-object p2, p0, Lorg/lasque/tusdk/core/secret/StickerAdapter;->d:Ljava/util/Hashtable;

    invoke-virtual {p2}, Ljava/util/Hashtable;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
