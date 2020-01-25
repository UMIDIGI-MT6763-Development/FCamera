.class public Lcom/mediatek/accessor/StereoInfoAccessor;
.super Ljava/lang/Object;
.source "StereoInfoAccessor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/StereoInfoAccessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private serialize(Lcom/mediatek/accessor/packer/PackInfo;Lcom/mediatek/accessor/parser/IParser;)V
    .locals 1

    invoke-interface {p2}, Lcom/mediatek/accessor/parser/IParser;->serialize()Lcom/mediatek/accessor/parser/SerializedInfo;

    move-result-object p2

    iget-object v0, p2, Lcom/mediatek/accessor/parser/SerializedInfo;->standardXmpBuf:[B

    iput-object v0, p1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedStandardXmpBuf:[B

    iget-object v0, p2, Lcom/mediatek/accessor/parser/SerializedInfo;->extendedXmpBuf:[B

    iput-object v0, p1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedExtendedXmpBuf:[B

    iget-object p2, p2, Lcom/mediatek/accessor/parser/SerializedInfo;->customizedBufMap:Ljava/util/Map;

    iput-object p2, p1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedCustomizedBufMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getGeoVerifyLevel([B)I
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    const-string v0, "<getGeoVerifyLevel> configBuffer is null!!"

    invoke-static {p1, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    new-instance v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;

    invoke-direct {v0, p1}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;-><init>([B)V

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getGeoVerifyLevel()I

    move-result p1

    return p1
.end method

.method public getMtkChaVerifyLevel([B)I
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    const-string v0, "<getMtkChaVerifyLevel> configBuffer is null!!"

    invoke-static {p1, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    new-instance v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;

    invoke-direct {v0, p1}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;-><init>([B)V

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getMtkChaVerifyLevel()I

    move-result p1

    return p1
.end method

.method public getPhoVerifyLevel([B)I
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    const-string v0, "<getPhoVerifyLevel> configBuffer is null!!"

    invoke-static {p1, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    new-instance v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;

    invoke-direct {v0, p1}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;-><init>([B)V

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getPhoVerifyLevel()I

    move-result p1

    return p1
.end method

.method public readGoogleStereoInfo(Ljava/lang/String;)Lcom/mediatek/accessor/data/GoogleStereoInfo;
    .locals 5

    const-string v0, ">>>>StereoInfoAccessor-readGoogleStereoInfo"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<readGoogleStereoInfo> filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mediatek/accessor/data/GoogleStereoInfo;

    invoke-direct {v0}, Lcom/mediatek/accessor/data/GoogleStereoInfo;-><init>()V

    new-instance v1, Lcom/mediatek/accessor/packer/PackerManager;

    invoke-direct {v1}, Lcom/mediatek/accessor/packer/PackerManager;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readLock(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->readFileToBuffer(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    const-string v2, "<readGoogleStereoInfo> fileBuffer is null!"

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readUnlock(Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iput-object v3, v0, Lcom/mediatek/accessor/data/GoogleStereoInfo;->debugDir:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1, v2}, Lcom/mediatek/accessor/packer/PackerManager;->unpack([B)Lcom/mediatek/accessor/packer/PackInfo;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedStandardXmpBuf:[B

    iget-object v4, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedExtendedXmpBuf:[B

    iget-object v1, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedCustomizedBufMap:Ljava/util/Map;

    invoke-static {v2, v0, v3, v4, v1}, Lcom/mediatek/accessor/parser/ParserFactory;->getParserInstance(ILjava/lang/Object;[B[BLjava/util/Map;)Lcom/mediatek/accessor/parser/IParser;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/accessor/parser/IParser;->read()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readUnlock(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readUnlock(Ljava/lang/String;)V

    throw v0
.end method

.method public readSegmentMaskInfo(Ljava/lang/String;)Lcom/mediatek/accessor/data/SegmentMaskInfo;
    .locals 5

    const-string v0, ">>>>StereoInfoAccessor-readSegmentMaskInfo"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<readSegmentMaskInfo> filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mediatek/accessor/data/SegmentMaskInfo;

    invoke-direct {v0}, Lcom/mediatek/accessor/data/SegmentMaskInfo;-><init>()V

    new-instance v1, Lcom/mediatek/accessor/packer/PackerManager;

    invoke-direct {v1}, Lcom/mediatek/accessor/packer/PackerManager;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readLock(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->readFileToBuffer(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    const-string v2, "<readSegmentMaskInfo> fileBuffer is null!"

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readUnlock(Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iput-object v3, v0, Lcom/mediatek/accessor/data/SegmentMaskInfo;->debugDir:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1, v2}, Lcom/mediatek/accessor/packer/PackerManager;->unpack([B)Lcom/mediatek/accessor/packer/PackInfo;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedStandardXmpBuf:[B

    iget-object v4, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedExtendedXmpBuf:[B

    iget-object v1, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedCustomizedBufMap:Ljava/util/Map;

    invoke-static {v2, v0, v3, v4, v1}, Lcom/mediatek/accessor/parser/ParserFactory;->getParserInstance(ILjava/lang/Object;[B[BLjava/util/Map;)Lcom/mediatek/accessor/parser/IParser;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/accessor/parser/IParser;->read()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readUnlock(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readUnlock(Ljava/lang/String;)V

    throw v0
.end method

.method public readStereoBufferInfo(Ljava/lang/String;)Lcom/mediatek/accessor/data/StereoBufferInfo;
    .locals 5

    const-string v0, ">>>>StereoInfoAccessor-readStereoBufferInfo"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<readStereoBufferInfo> filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mediatek/accessor/data/StereoBufferInfo;

    invoke-direct {v0}, Lcom/mediatek/accessor/data/StereoBufferInfo;-><init>()V

    new-instance v1, Lcom/mediatek/accessor/packer/PackerManager;

    invoke-direct {v1}, Lcom/mediatek/accessor/packer/PackerManager;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readLock(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->readFileToBuffer(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    const-string v2, "<readStereoBufferInfo> fileBuffer is null!"

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readUnlock(Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iput-object v3, v0, Lcom/mediatek/accessor/data/StereoBufferInfo;->debugDir:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1, v2}, Lcom/mediatek/accessor/packer/PackerManager;->unpack([B)Lcom/mediatek/accessor/packer/PackInfo;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedStandardXmpBuf:[B

    iget-object v4, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedExtendedXmpBuf:[B

    iget-object v1, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedCustomizedBufMap:Ljava/util/Map;

    invoke-static {v2, v0, v3, v4, v1}, Lcom/mediatek/accessor/parser/ParserFactory;->getParserInstance(ILjava/lang/Object;[B[BLjava/util/Map;)Lcom/mediatek/accessor/parser/IParser;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/accessor/parser/IParser;->read()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readUnlock(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readUnlock(Ljava/lang/String;)V

    throw v0
.end method

.method public readStereoConfigInfo(Ljava/lang/String;)Lcom/mediatek/accessor/data/StereoConfigInfo;
    .locals 5

    const-string v0, ">>>>StereoInfoAccessor-readStereoConfigInfo"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<readStereoConfigInfo> filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-direct {v0}, Lcom/mediatek/accessor/data/StereoConfigInfo;-><init>()V

    new-instance v1, Lcom/mediatek/accessor/packer/PackerManager;

    invoke-direct {v1}, Lcom/mediatek/accessor/packer/PackerManager;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readLock(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->readFileToBuffer(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    const-string v2, "<readStereoConfigInfo> fileBuffer is null!"

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readUnlock(Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iput-object v3, v0, Lcom/mediatek/accessor/data/StereoConfigInfo;->debugDir:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1, v2}, Lcom/mediatek/accessor/packer/PackerManager;->unpack([B)Lcom/mediatek/accessor/packer/PackInfo;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedStandardXmpBuf:[B

    iget-object v4, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedExtendedXmpBuf:[B

    iget-object v1, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedCustomizedBufMap:Ljava/util/Map;

    invoke-static {v2, v0, v3, v4, v1}, Lcom/mediatek/accessor/parser/ParserFactory;->getParserInstance(ILjava/lang/Object;[B[BLjava/util/Map;)Lcom/mediatek/accessor/parser/IParser;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/accessor/parser/IParser;->read()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readUnlock(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readUnlock(Ljava/lang/String;)V

    throw v0
.end method

.method public readStereoDepthInfo(Ljava/lang/String;)Lcom/mediatek/accessor/data/StereoDepthInfo;
    .locals 5

    const-string v0, ">>>>StereoInfoAccessor-readStereoDepthInfo"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<readStereoDepthInfo> filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mediatek/accessor/data/StereoDepthInfo;

    invoke-direct {v0}, Lcom/mediatek/accessor/data/StereoDepthInfo;-><init>()V

    new-instance v1, Lcom/mediatek/accessor/packer/PackerManager;

    invoke-direct {v1}, Lcom/mediatek/accessor/packer/PackerManager;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readLock(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->readFileToBuffer(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    const-string v2, "<readStereoDepthInfo> fileBuffer is null!"

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readUnlock(Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iput-object v3, v0, Lcom/mediatek/accessor/data/StereoDepthInfo;->debugDir:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1, v2}, Lcom/mediatek/accessor/packer/PackerManager;->unpack([B)Lcom/mediatek/accessor/packer/PackInfo;

    move-result-object v1

    iput-object v2, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedJpgBuf:[B

    const/4 v2, 0x4

    iget-object v3, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedStandardXmpBuf:[B

    iget-object v4, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedExtendedXmpBuf:[B

    iget-object v1, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedCustomizedBufMap:Ljava/util/Map;

    invoke-static {v2, v0, v3, v4, v1}, Lcom/mediatek/accessor/parser/ParserFactory;->getParserInstance(ILjava/lang/Object;[B[BLjava/util/Map;)Lcom/mediatek/accessor/parser/IParser;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/accessor/parser/IParser;->read()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readUnlock(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->readUnlock(Ljava/lang/String;)V

    throw v0
.end method

.method public writeRefocusImage(Ljava/lang/String;Lcom/mediatek/accessor/data/StereoConfigInfo;[B)V
    .locals 6

    const-string v0, ">>>>StereoInfoAccessor-writeRefocusImage"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<writeRefocusImage> filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", StereoConfigInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object p1, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    const-string p2, "<writeRefocusImage> configInfo is null!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_0
    new-instance v0, Lcom/mediatek/accessor/packer/PackerManager;

    invoke-direct {v0}, Lcom/mediatek/accessor/packer/PackerManager;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->writeLock(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->readFileToBuffer(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p2, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    const-string p3, "<writeRefocusImage> fileBuffer is null!"

    invoke-static {p2, p3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->writeUnlock(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iput-object v2, p2, Lcom/mediatek/accessor/data/StereoConfigInfo;->debugDir:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0, v1}, Lcom/mediatek/accessor/packer/PackerManager;->unpack([B)Lcom/mediatek/accessor/packer/PackInfo;

    move-result-object v2

    iput-object v1, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedJpgBuf:[B

    const/4 v1, 0x3

    iget-object v3, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedStandardXmpBuf:[B

    iget-object v4, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedExtendedXmpBuf:[B

    iget-object v5, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedCustomizedBufMap:Ljava/util/Map;

    invoke-static {v1, p2, v3, v4, v5}, Lcom/mediatek/accessor/parser/ParserFactory;->getParserInstance(ILjava/lang/Object;[B[BLjava/util/Map;)Lcom/mediatek/accessor/parser/IParser;

    move-result-object p2

    invoke-interface {p2}, Lcom/mediatek/accessor/parser/IParser;->write()V

    invoke-direct {p0, v2, p2}, Lcom/mediatek/accessor/StereoInfoAccessor;->serialize(Lcom/mediatek/accessor/packer/PackInfo;Lcom/mediatek/accessor/parser/IParser;)V

    iput-object p3, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedBlurImageBuf:[B

    invoke-virtual {v0, v2}, Lcom/mediatek/accessor/packer/PackerManager;->pack(Lcom/mediatek/accessor/packer/PackInfo;)[B

    iget-object p2, v2, Lcom/mediatek/accessor/packer/PackInfo;->packedJpgBuf:[B

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Utils;->writeBufferToFile(Ljava/lang/String;[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->writeUnlock(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->writeUnlock(Ljava/lang/String;)V

    throw p2
.end method

.method public writeSegmentMaskInfo(Ljava/lang/String;Lcom/mediatek/accessor/data/SegmentMaskInfo;)V
    .locals 6

    const-string v0, ">>>>StereoInfoAccessor-writeSegmentMaskInfo"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<writeSegmentMaskInfo> filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", maskInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object p1, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    const-string p2, "<writeSegmentMaskInfo> maskInfo is null!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_0
    new-instance v0, Lcom/mediatek/accessor/packer/PackerManager;

    invoke-direct {v0}, Lcom/mediatek/accessor/packer/PackerManager;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->writeLock(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->readFileToBuffer(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p2, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    const-string v0, "<writeSegmentMaskInfo> fileBuffer is null!"

    invoke-static {p2, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->writeUnlock(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iput-object v2, p2, Lcom/mediatek/accessor/data/SegmentMaskInfo;->debugDir:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0, v1}, Lcom/mediatek/accessor/packer/PackerManager;->unpack([B)Lcom/mediatek/accessor/packer/PackInfo;

    move-result-object v2

    iput-object v1, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedJpgBuf:[B

    const/4 v1, 0x1

    iget-object v3, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedStandardXmpBuf:[B

    iget-object v4, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedExtendedXmpBuf:[B

    iget-object v5, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedCustomizedBufMap:Ljava/util/Map;

    invoke-static {v1, p2, v3, v4, v5}, Lcom/mediatek/accessor/parser/ParserFactory;->getParserInstance(ILjava/lang/Object;[B[BLjava/util/Map;)Lcom/mediatek/accessor/parser/IParser;

    move-result-object p2

    invoke-interface {p2}, Lcom/mediatek/accessor/parser/IParser;->write()V

    invoke-direct {p0, v2, p2}, Lcom/mediatek/accessor/StereoInfoAccessor;->serialize(Lcom/mediatek/accessor/packer/PackInfo;Lcom/mediatek/accessor/parser/IParser;)V

    invoke-virtual {v0, v2}, Lcom/mediatek/accessor/packer/PackerManager;->pack(Lcom/mediatek/accessor/packer/PackInfo;)[B

    iget-object p2, v2, Lcom/mediatek/accessor/packer/PackInfo;->packedJpgBuf:[B

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Utils;->writeBufferToFile(Ljava/lang/String;[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->writeUnlock(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->writeUnlock(Ljava/lang/String;)V

    throw p2
.end method

.method public writeStereoCaptureInfo(Lcom/mediatek/accessor/data/StereoCaptureInfo;)[B
    .locals 6

    const-string v0, ">>>>StereoInfoAccessor-writeStereoCaptureInfo"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<writeStereoCaptureInfo> captureInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object p1, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    const-string v0, "<writeStereoCaptureInfo> captureInfo is null!"

    invoke-static {p1, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/mediatek/accessor/packer/PackInfo;

    invoke-direct {v0}, Lcom/mediatek/accessor/packer/PackInfo;-><init>()V

    new-instance v1, Lcom/mediatek/accessor/packer/PackerManager;

    invoke-direct {v1}, Lcom/mediatek/accessor/packer/PackerManager;-><init>()V

    iget-object v2, p1, Lcom/mediatek/accessor/data/StereoCaptureInfo;->jpgBuffer:[B

    iput-object v2, v0, Lcom/mediatek/accessor/packer/PackInfo;->unpackedJpgBuf:[B

    const/4 v2, 0x5

    iget-object v3, v0, Lcom/mediatek/accessor/packer/PackInfo;->unpackedStandardXmpBuf:[B

    iget-object v4, v0, Lcom/mediatek/accessor/packer/PackInfo;->unpackedExtendedXmpBuf:[B

    iget-object v5, v0, Lcom/mediatek/accessor/packer/PackInfo;->unpackedCustomizedBufMap:Ljava/util/Map;

    invoke-static {v2, p1, v3, v4, v5}, Lcom/mediatek/accessor/parser/ParserFactory;->getParserInstance(ILjava/lang/Object;[B[BLjava/util/Map;)Lcom/mediatek/accessor/parser/IParser;

    move-result-object p1

    invoke-interface {p1}, Lcom/mediatek/accessor/parser/IParser;->write()V

    invoke-direct {p0, v0, p1}, Lcom/mediatek/accessor/StereoInfoAccessor;->serialize(Lcom/mediatek/accessor/packer/PackInfo;Lcom/mediatek/accessor/parser/IParser;)V

    invoke-virtual {v1, v0}, Lcom/mediatek/accessor/packer/PackerManager;->pack(Lcom/mediatek/accessor/packer/PackInfo;)[B

    move-result-object p1

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-object p1
.end method

.method public writeStereoDepthInfo(Ljava/lang/String;Lcom/mediatek/accessor/data/StereoDepthInfo;)V
    .locals 6

    const-string v0, ">>>>StereoInfoAccessor-writeStereoDepthInfo"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<writeStereoDepthInfo> filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", depthInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object p1, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    const-string p2, "<writeStereoDepthInfo> depthInfo is null!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_0
    new-instance v0, Lcom/mediatek/accessor/packer/PackerManager;

    invoke-direct {v0}, Lcom/mediatek/accessor/packer/PackerManager;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->writeLock(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->readFileToBuffer(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p2, Lcom/mediatek/accessor/StereoInfoAccessor;->TAG:Ljava/lang/String;

    const-string v0, "<writeStereoDepthInfo> fileBuffer is null!"

    invoke-static {p2, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->writeUnlock(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/mediatek/accessor/util/Utils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iput-object v2, p2, Lcom/mediatek/accessor/data/StereoDepthInfo;->debugDir:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0, v1}, Lcom/mediatek/accessor/packer/PackerManager;->unpack([B)Lcom/mediatek/accessor/packer/PackInfo;

    move-result-object v2

    iput-object v1, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedJpgBuf:[B

    const/4 v1, 0x4

    iget-object v3, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedStandardXmpBuf:[B

    iget-object v4, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedExtendedXmpBuf:[B

    iget-object v5, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedCustomizedBufMap:Ljava/util/Map;

    invoke-static {v1, p2, v3, v4, v5}, Lcom/mediatek/accessor/parser/ParserFactory;->getParserInstance(ILjava/lang/Object;[B[BLjava/util/Map;)Lcom/mediatek/accessor/parser/IParser;

    move-result-object p2

    invoke-interface {p2}, Lcom/mediatek/accessor/parser/IParser;->write()V

    invoke-direct {p0, v2, p2}, Lcom/mediatek/accessor/StereoInfoAccessor;->serialize(Lcom/mediatek/accessor/packer/PackInfo;Lcom/mediatek/accessor/parser/IParser;)V

    invoke-virtual {v0, v2}, Lcom/mediatek/accessor/packer/PackerManager;->pack(Lcom/mediatek/accessor/packer/PackInfo;)[B

    iget-object p2, v2, Lcom/mediatek/accessor/packer/PackInfo;->packedJpgBuf:[B

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Utils;->writeBufferToFile(Ljava/lang/String;[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->writeUnlock(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/mediatek/accessor/util/ReadWriteLockFileUtils;->writeUnlock(Ljava/lang/String;)V

    throw p2
.end method
