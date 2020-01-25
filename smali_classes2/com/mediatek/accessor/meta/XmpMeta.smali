.class public Lcom/mediatek/accessor/meta/XmpMeta;
.super Ljava/lang/Object;
.source "XmpMeta.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMeta:Lcom/adobe/xmp/XMPMeta;

.field private mRegister:Lcom/adobe/xmp/XMPSchemaRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/meta/XmpMeta;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArrayItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/mediatek/accessor/meta/XmpMeta;->mMeta:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_0

    sget-object p1, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p2, "<getArrayItem> meta is null, return!!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/adobe/xmp/XMPMeta;->getArrayItem(Ljava/lang/String;Ljava/lang/String;I)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object p3

    if-nez p3, :cond_1

    sget-object p3, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string v0, "<getStructFieldInt> property is null, return -1"

    invoke-static {p3, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1

    :cond_1
    invoke-interface {p3}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p3, "<getArrayItem> NullPointerException!!!"

    invoke-static {p2, p3, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1

    :catch_1
    move-exception p3

    sget-object v0, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getArrayItem> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p3}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1
.end method

.method public getPropertyBase64(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/meta/XmpMeta;->mMeta:Lcom/adobe/xmp/XMPMeta;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p2, "<getPropertyBase64> meta is null, return -1!!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/adobe/xmp/XMPMeta;->getPropertyBase64(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p2, "<getPropertyBase64> NullPointerException!!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_1
    sget-object v0, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getPropertyBase64> XMPException, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/meta/XmpMeta;->mMeta:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_0

    sget-object p1, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p2, "<getPropertyString> meta is null, return -1!!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string v0, "<getPropertyString> NullPointerException!!!"

    invoke-static {p2, v0, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getPropertyString> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1
.end method

.method public getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/mediatek/accessor/meta/XmpMeta;->mMeta:Lcom/adobe/xmp/XMPMeta;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget-object p1, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p2, "<getStructFieldInt> meta is null, return -1"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/adobe/xmp/XMPMeta;->getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p3, "<getStructFieldInt> property is null, return -1"

    invoke-static {p1, p3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-interface {p1}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p3, "<getStructFieldInt> NullPointerException!!!"

    invoke-static {p2, p3, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_1
    move-exception p1

    sget-object p3, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getStructFieldInt> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public registerNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/accessor/meta/XmpMeta;->mRegister:Lcom/adobe/xmp/XMPSchemaRegistry;

    invoke-interface {v0, p1, p2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<registerNamespace> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public serialize()[B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/accessor/meta/XmpMeta;->mMeta:Lcom/adobe/xmp/XMPMeta;

    new-instance v1, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string v2, "<serialize> XMPException"

    invoke-static {v1, v2, v0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string v1, "<serialize> return null!!!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/accessor/meta/XmpMeta;->mMeta:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_0

    sget-object p1, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p2, "<setArrayItem> meta is null, return!!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/adobe/xmp/XMPMeta;->setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p3, "<setArrayItem> NullPointerException!!!"

    invoke-static {p2, p3, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p3

    sget-object p4, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<setArrayItem> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1, p3}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setMeta(Lcom/adobe/xmp/XMPMeta;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/accessor/meta/XmpMeta;->mMeta:Lcom/adobe/xmp/XMPMeta;

    return-void
.end method

.method public setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/accessor/meta/XmpMeta;->mMeta:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_0

    sget-object p1, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p2, "<setPropertyString> meta is null, return!!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/adobe/xmp/XMPMeta;->setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p2, "<setPropertyBase64> NullPointerException!!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    sget-object p3, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<setPropertyBase64> XMPException, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setPropertyString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mediatek/accessor/meta/XmpMeta;->mMeta:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_0

    sget-object p1, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p2, "<setPropertyString> meta is null, return!!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p2, "<setPropertyString> NullPointerException!!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p3

    sget-object v0, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<setPropertyString> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p3}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setRegistry(Lcom/adobe/xmp/XMPSchemaRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/accessor/meta/XmpMeta;->mRegister:Lcom/adobe/xmp/XMPSchemaRegistry;

    return-void
.end method

.method public setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/mediatek/accessor/meta/XmpMeta;->mMeta:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_0

    sget-object p1, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p2, "<setStructField> meta is null, return!!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    const-string p3, "<setStructField> NullPointerException!!!"

    invoke-static {p2, p3, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    sget-object p3, Lcom/mediatek/accessor/meta/XmpMeta;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<setStructField> "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
