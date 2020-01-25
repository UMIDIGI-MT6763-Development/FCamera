.class public Lorg/lasque/tusdk/core/secret/BrushAdapter;
.super Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter<",
        "Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;",
        ">;"
    }
.end annotation


# static fields
.field public static final EraserBrushCode:Ljava/lang/String; = "Eraser"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lorg/lasque/tusdk/core/TuSdkConfigs;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/TuSdkConfigs;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->c:Lorg/lasque/tusdk/core/TuSdkConfigs;

    sget-object p1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->TypeBrush:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->setDownloadTaskType(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;)V

    sget-object p1, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/secret/SdkValid;->smudgeEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->a()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/BrushAdapter;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->e:I

    return p0
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->d:Z

    iput v0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->tryLoadTaskDataWithCache()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/lasque/tusdk/core/secret/BrushAdapter$1;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/secret/BrushAdapter$1;-><init>(Lorg/lasque/tusdk/core/secret/BrushAdapter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V
    .locals 4

    iget-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->args:Ljava/util/HashMap;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->args:Ljava/util/HashMap;

    iput-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->args:Ljava/util/HashMap;

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->args:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->args:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->args:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->name:Ljava/lang/String;

    iput-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->name:Ljava/lang/String;

    :cond_2
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->thumb:Ljava/lang/String;

    iput-object p1, p2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->thumb:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;)V
    .locals 3

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->file:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->file:Ljava/lang/String;

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkBundle;->sdkBundleBrush(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/lasque/tusdk/core/secret/SdkValid;->loadBrushGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-class v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->a(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;)V
    .locals 4

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->validKey:Ljava/lang/String;

    iput-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->validKey:Ljava/lang/String;

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->name:Ljava/lang/String;

    iput-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->name:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    iget-wide v2, v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushId:J

    invoke-virtual {p2, v2, v3}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->getBrush(J)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v2}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->a(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V

    iget v1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->e:I

    goto :goto_0

    :cond_3
    iput-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    return-void

    :cond_4
    :goto_1
    iget-object p1, p2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->e:I

    goto :goto_2

    :cond_5
    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Lorg/lasque/tusdk/core/TuSdkContext;->getDrawableResId(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/BrushAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->d:Z

    return p1
.end method


# virtual methods
.method protected appendDownload(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)Z
    .locals 3

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

    iget-object p1, p1, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->key:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lorg/lasque/tusdk/core/secret/SdkValid;->loadBrushGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->isDownload:Z

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    iget-object v2, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->e:I

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method protected asyncLoadLocalBrushes()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->asyncLoadDownloadDatas()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->c:Lorg/lasque/tusdk/core/TuSdkConfigs;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/lasque/tusdk/core/TuSdkConfigs;->brushGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->c:Lorg/lasque/tusdk/core/TuSdkConfigs;

    iget-object v1, v1, Lorg/lasque/tusdk/core/TuSdkConfigs;->brushGroups:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;

    invoke-direct {p0, v1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->a(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/lasque/tusdk/core/secret/BrushAdapter$2;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/secret/BrushAdapter$2;-><init>(Lorg/lasque/tusdk/core/secret/BrushAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected asyncTaskLoadImage(Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;)Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p1, Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;->data:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    iget-object v1, p1, Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;->data:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    iget-wide v1, v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->groupId:J

    iget-object p1, p1, Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;->data:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    iget-wide v3, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/secret/SdkValid;->readBrushThumb(JJ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic asyncTaskLoadImage(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)Landroid/graphics/Bitmap;
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->asyncTaskLoadImage(Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public containsGroupId(J)Z
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->findGroupByID(Ljava/lang/Long;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public findGroupByID(Ljava/lang/Long;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;

    iget-wide v2, v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->groupId:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getAllGroupID()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;

    iget-wide v2, v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getBrushWithCode(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    iget-object v2, v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->code:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBrushWithCodes(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->d:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->sdkValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->getBrushWithCode(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getCacheKey(Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;)Ljava/lang/String;
    .locals 0

    iget-object p1, p1, Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;->data:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->thumbKey:Ljava/lang/String;

    return-object p1
.end method

.method protected bridge synthetic getCacheKey(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->getCacheKey(Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    iget-object v2, v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->code:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getEraserBrush()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;
    .locals 2

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    invoke-direct {v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;-><init>()V

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeEraser:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->setType(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;)V

    const-string v1, "Eraser"

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->code:Ljava/lang/String;

    return-object v0
.end method

.method public isInited()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->d:Z

    return v0
.end method

.method public loadBrushData(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v1, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->code:Ljava/lang/String;

    const-string v2, "Eraser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/high16 v0, -0x1000000

    const/16 v1, 0xc8

    invoke-static {v1, v1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->createOvalImage(III)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->setImage(Landroid/graphics/Bitmap;)V

    return v2

    :cond_1
    iget-wide v3, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->groupId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->findGroupByID(Ljava/lang/Long;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-wide v3, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushId:J

    invoke-virtual {v1, v3, v4}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->getBrush(J)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    sget-object v3, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    iget-wide v4, v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->groupId:J

    iget-object v1, v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushImageKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v1}, Lorg/lasque/tusdk/core/secret/SdkValid;->readBrush(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->setImage(Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V

    return v2
.end method

.method public loadThumbWithBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->code:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->getBrushWithCode(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->thumb:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;

    invoke-direct {v0, p2, p1}, Lorg/lasque/tusdk/core/secret/BrushAdapter$BrushThumbTaskImageWare;-><init>(Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->loadImage(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected removeDownloadData(J)V
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->findGroupByID(Ljava/lang/Long;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushGroup;->brushes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    iget-object v3, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->e:I

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/SdkValid;->removeBrushGroup(J)V

    const-string v0, "remove download brushes [%s]: %s | %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    iget p1, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    iget-object p2, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public verifyCodes(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->d:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/BrushAdapter;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->sdkValid()Z

    move-result v0

    if-nez v0, :cond_0

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

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->getBrushWithCode(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
