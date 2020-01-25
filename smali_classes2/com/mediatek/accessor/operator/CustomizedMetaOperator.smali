.class public Lcom/mediatek/accessor/operator/CustomizedMetaOperator;
.super Ljava/lang/Object;
.source "CustomizedMetaOperator.java"

# interfaces
.implements Lcom/mediatek/accessor/operator/IMetaOperator;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCustMeta:Lcom/mediatek/accessor/meta/CustomizedMeta;

.field private mListOfCustDataItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->mListOfCustDataItem:Ljava/util/ArrayList;

    new-instance v0, Lcom/mediatek/accessor/meta/CustomizedMeta;

    invoke-direct {v0, p1}, Lcom/mediatek/accessor/meta/CustomizedMeta;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->mCustMeta:Lcom/mediatek/accessor/meta/CustomizedMeta;

    return-void
.end method


# virtual methods
.method public decrypt()V
    .locals 0

    return-void
.end method

.method public encrypt()V
    .locals 0

    return-void
.end method

.method public read()V
    .locals 5

    sget-object v0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->TAG:Ljava/lang/String;

    const-string v1, "<read>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->mCustMeta:Lcom/mediatek/accessor/meta/CustomizedMeta;

    iget-object v4, p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v4, v4, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/accessor/meta/CustomizedMeta;->getPropertyBuffer(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public serialize()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    sget-object v0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->TAG:Ljava/lang/String;

    const-string v1, "<serialize>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->mCustMeta:Lcom/mediatek/accessor/meta/CustomizedMeta;

    invoke-virtual {v0}, Lcom/mediatek/accessor/meta/CustomizedMeta;->serialize()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfCustomDataItem:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->mListOfCustDataItem:Ljava/util/ArrayList;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "dataCollections is null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write()V
    .locals 5

    sget-object v0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->TAG:Ljava/lang/String;

    const-string v1, "<write>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->mCustMeta:Lcom/mediatek/accessor/meta/CustomizedMeta;

    iget-object v3, p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/accessor/operator/CustomizedMetaOperator;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v4, v4, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/accessor/meta/CustomizedMeta;->setPropertyBuffer(Ljava/lang/String;[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
