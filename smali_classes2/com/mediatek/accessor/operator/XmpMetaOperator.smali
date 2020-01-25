.class public Lcom/mediatek/accessor/operator/XmpMetaOperator;
.super Ljava/lang/Object;
.source "XmpMetaOperator.java"

# interfaces
.implements Lcom/mediatek/accessor/operator/IMetaOperator;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final XMP_KEY:Ljava/lang/String; = "XMP"


# instance fields
.field private mDest:I

.field private mListOfArrayItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListOfBufferItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListOfSimpleValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListOfStructItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/meta/data/DataItem$StructItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMeta:Lcom/mediatek/accessor/meta/XmpMeta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/operator/XmpMetaOperator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfSimpleValue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfBufferItem:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfArrayItem:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfStructItem:Ljava/util/ArrayList;

    new-instance v0, Lcom/mediatek/accessor/meta/XmpMeta;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/XmpMeta;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    invoke-static {p1}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mediatek/accessor/meta/XmpMeta;->setMeta(Lcom/adobe/xmp/XMPMeta;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/accessor/meta/XmpMeta;->setMeta(Lcom/adobe/xmp/XMPMeta;)V

    :goto_0
    iget-object p1, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/accessor/meta/XmpMeta;->setRegistry(Lcom/adobe/xmp/XMPSchemaRegistry;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->TAG:Ljava/lang/String;

    const-string v1, "<XmpMetaOperator> XMPException "

    invoke-static {v0, v1, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    :goto_1
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
    .locals 8

    sget-object v0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->TAG:Ljava/lang/String;

    const-string v1, "<read>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfSimpleValue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget v4, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->dest:I

    iget v5, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mDest:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    iget-object v5, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v5, v5, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v6, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/accessor/meta/XmpMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    sget-object v4, Lcom/mediatek/accessor/operator/XmpMetaOperator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<read> after simpleValue.nameSpaceItem.nameSpace "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v6, v6, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", simpleValue.name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", simpleValue.value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfBufferItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfBufferItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget v4, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->dest:I

    iget v5, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mDest:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    iget-object v5, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v5, v5, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v6, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/accessor/meta/XmpMeta;->getPropertyBase64(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    iget-object v4, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfBufferItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfArrayItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfArrayItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;

    iget v4, v3, Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;->dest:I

    iget v5, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mDest:I

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    iget-object v5, v3, Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v5, v5, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v6, v3, Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;->arrayName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2}, Lcom/mediatek/accessor/meta/XmpMeta;->getArrayItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;->value:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfArrayItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfStructItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    iget v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->dest:I

    iget v4, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mDest:I

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->structNameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v4, v4, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v5, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->structName:Ljava/lang/String;

    iget-object v6, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldNameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v6, v6, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v7, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/mediatek/accessor/meta/XmpMeta;->getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldValue:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public serialize()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    sget-object v0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->TAG:Ljava/lang/String;

    const-string v1, "<serialize>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "XMP"

    iget-object v2, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    invoke-virtual {v2}, Lcom/mediatek/accessor/meta/XmpMeta;->serialize()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v0, p1, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->dest:I

    iput v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mDest:I

    iget-object v0, p1, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfSimpleValue:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfSimpleValue:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfBufferItem:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfBufferItem:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfArrayItem:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfArrayItem:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfStructItem:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfStructItem:Ljava/util/ArrayList;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "dataCollections is null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write()V
    .locals 12

    sget-object v0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->TAG:Ljava/lang/String;

    const-string v1, "<write>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfSimpleValue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget v4, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->dest:I

    iget v5, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mDest:I

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    iget-object v5, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v5, v5, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v6, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v6, v6, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpacePrifix:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/accessor/meta/XmpMeta;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    iget-object v5, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v5, v5, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v6, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v3}, Lcom/mediatek/accessor/meta/XmpMeta;->setPropertyString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfBufferItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    invoke-direct {v2}, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;-><init>()V

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfBufferItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget v4, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->dest:I

    iget v5, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mDest:I

    if-ne v4, v5, :cond_2

    iget-object v4, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    iget-object v5, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v5, v5, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v6, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v6, v6, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpacePrifix:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/accessor/meta/XmpMeta;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    iget-object v5, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v5, v5, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v6, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    invoke-virtual {v4, v5, v6, v3}, Lcom/mediatek/accessor/meta/XmpMeta;->setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfArrayItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;

    invoke-direct {v2}, Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;-><init>()V

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfArrayItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;

    iget v4, v3, Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;->dest:I

    iget v5, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mDest:I

    if-ne v4, v5, :cond_4

    iget-object v4, v3, Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;->value:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    iget-object v5, v3, Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v5, v5, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v6, v3, Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v6, v6, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpacePrifix:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/accessor/meta/XmpMeta;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    iget-object v5, v3, Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v5, v5, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v6, v3, Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;->arrayName:Ljava/lang/String;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;->value:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/mediatek/accessor/meta/XmpMeta;->setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfStructItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    invoke-direct {v2}, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;-><init>()V

    :goto_3
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    iget v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->dest:I

    iget v4, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mDest:I

    if-ne v3, v4, :cond_6

    iget-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldValue:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->structNameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v4, v4, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v5, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->structNameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v5, v5, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpacePrifix:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/accessor/meta/XmpMeta;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mediatek/accessor/operator/XmpMetaOperator;->mMeta:Lcom/mediatek/accessor/meta/XmpMeta;

    iget-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->structNameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v7, v3, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v8, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->structName:Ljava/lang/String;

    iget-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldNameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v9, v3, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v10, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldName:Ljava/lang/String;

    iget-object v11, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldValue:Ljava/lang/String;

    invoke-virtual/range {v6 .. v11}, Lcom/mediatek/accessor/meta/XmpMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method
