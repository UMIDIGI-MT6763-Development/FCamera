.class public Lcom/freeme/camera/ui/modepicker/ModeProvider;
.super Ljava/lang/Object;
.source "ModeProvider.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mModeBackup:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/IAppUi$ModeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mModeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/IAppUi$ModeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mModeMap:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/IAppUi$ModeItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/modepicker/ModeProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeItems:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeBackup:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public clearAllModes()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeBackup:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getAllModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/IAppUi$ModeItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeItems:Ljava/util/List;

    return-object v0
.end method

.method public getMode(Ljava/lang/String;)Lcom/freeme/camera/common/IAppUi$ModeItem;
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMode className = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/ui/modepicker/ModeProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "Class name is null!"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeBackup:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeBackup:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/freeme/camera/common/IAppUi$ModeItem;

    :cond_1
    return-object v0
.end method

.method public getModeEntryName(Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/common/IAppUi$ModeItem;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    check-cast p1, Lcom/freeme/camera/common/IAppUi$ModeItem;

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/IAppUi$ModeItem;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getModeSupportTypes(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModeSupportTypes modeName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " deviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/IAppUi$ModeItem;

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mSupportedCameraIds:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    iget-object v4, v2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mSupportedCameraIds:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/freeme/camera/ui/modepicker/ModeProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find one type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getModes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/IAppUi$ModeItem;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    return-object v0
.end method

.method public getModes2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/IAppUi$ModeItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeBackup:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public registerMode(Lcom/freeme/camera/common/IAppUi$ModeItem;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/ui/modepicker/ModeProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "Mode item is null!"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMode mode name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeBackup:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeMap:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeProvider;->mModeItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
