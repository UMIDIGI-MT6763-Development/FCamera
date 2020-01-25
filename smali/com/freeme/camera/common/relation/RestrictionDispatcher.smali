.class public Lcom/freeme/camera/common/relation/RestrictionDispatcher;
.super Ljava/lang/Object;
.source "RestrictionDispatcher.java"


# instance fields
.field private final mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/setting/SettingTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/relation/RestrictionDispatcher;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/freeme/camera/common/relation/Relation;)V
    .locals 7

    invoke-virtual {p1}, Lcom/freeme/camera/common/relation/Relation;->getHeaderKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freeme/camera/common/relation/Relation;->getBodyKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/common/relation/RestrictionDispatcher;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v3, v2}, Lcom/freeme/camera/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/freeme/camera/common/setting/ICameraSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/relation/Relation;->getBodyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/relation/Relation;->getBodyEntryValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, ","

    invoke-static {v6}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v3, v0, v4, v5}, Lcom/freeme/camera/common/setting/ICameraSetting;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method
