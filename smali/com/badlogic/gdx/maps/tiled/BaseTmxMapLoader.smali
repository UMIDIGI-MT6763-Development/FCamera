.class public abstract Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "BaseTmxMapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters<",
        "Lcom/badlogic/gdx/maps/tiled/TiledMap;",
        ">;>",
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader<",
        "Lcom/badlogic/gdx/maps/tiled/TiledMap;",
        "TP;>;"
    }
.end annotation


# static fields
.field protected static final FLAG_FLIP_DIAGONALLY:I = 0x20000000

.field protected static final FLAG_FLIP_HORIZONTALLY:I = -0x80000000

.field protected static final FLAG_FLIP_VERTICALLY:I = 0x40000000

.field protected static final MASK_CLEAR:I = -0x20000000


# instance fields
.field protected convertObjectToTileSpace:Z

.field protected flipY:Z

.field protected map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

.field protected mapHeightInPixels:I

.field protected mapTileHeight:I

.field protected mapTileWidth:I

.field protected mapWidthInPixels:I

.field protected root:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field protected xml:Lcom/badlogic/gdx/utils/XmlReader;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    new-instance p1, Lcom/badlogic/gdx/utils/XmlReader;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/XmlReader;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    return-void
.end method

.method protected static getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 2

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "\\/"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, ".."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static getTileIds(Lcom/badlogic/gdx/utils/XmlReader$Element;II)[I
    .locals 8

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p0

    const-string v0, "encoding"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    mul-int v2, p1, p2

    new-array v2, v2, [I

    const-string v3, "csv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    array-length p1, p0

    if-ge v4, p1, :cond_8

    aget-object p1, p0, v4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p1, p1

    aput p1, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "base64"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :try_start_0
    const-string v0, "compression"

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v0

    goto :goto_1

    :cond_1
    const-string v3, "gzip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p0, p0

    invoke-direct {v0, v3, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v1, v0

    goto :goto_1

    :cond_2
    const-string v3, "zlib"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    :goto_1
    const/4 p0, 0x4

    new-array p0, p0, [B

    move v0, v4

    :goto_2
    if-ge v0, p2, :cond_7

    move v3, v4

    :goto_3
    if-ge v3, p1, :cond_6

    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    :goto_4
    array-length v6, p0

    if-ge v5, v6, :cond_4

    array-length v6, p0

    sub-int/2addr v6, v5

    invoke-virtual {v1, p0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    goto :goto_5

    :cond_3
    add-int/2addr v5, v6

    goto :goto_4

    :cond_4
    :goto_5
    array-length v6, p0

    if-ne v5, v6, :cond_5

    mul-int v5, v0, p1

    add-int/2addr v5, v3

    aget-byte v6, p0, v4

    invoke-static {v6}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->unsignedByteToInt(B)I

    move-result v6

    const/4 v7, 0x1

    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x2

    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x3

    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p1, "Error Reading TMX Layer Data: Premature end of tile data"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_8
    return-object v2

    :cond_9
    :try_start_1
    new-instance p0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognised compression ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") for TMX Layer Data"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error Reading TMX Layer Data - IOException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_a
    new-instance p0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognised encoding ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") for TMX Layer Data"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p1, "Unsupported encoding (XML) for TMX Layer Data"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static unsignedByteToInt(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method protected createTileLayerCell(ZZZ)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;-><init>()V

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipHorizontally(Z)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipVertically(Z)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipHorizontally(Z)V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipVertically(Z)V

    :goto_0
    return-object v0
.end method

.method protected loadBasicLayerInfo(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 4

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "opacity"

    const-string v2, "1.0"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "visible"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/maps/MapLayer;->setName(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/maps/MapLayer;->setOpacity(F)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/maps/MapLayer;->setVisible(Z)V

    return-void
.end method

.method protected loadImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V
    .locals 4

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imagelayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "x"

    const-string v1, "0"

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "y"

    const-string v2, "0"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-boolean v2, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapHeightInPixels:I

    sub-int v1, v2, v1

    :cond_0
    const/4 v2, 0x0

    const-string v3, "image"

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v2, "source"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Lcom/badlogic/gdx/maps/ImageResolver;->getImage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result p3

    sub-int/2addr v1, p3

    :cond_1
    new-instance p3, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    invoke-direct {p3, v2, v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V

    invoke-virtual {p0, p3, p2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadBasicLayerInfo(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    const-string p4, "properties"

    invoke-virtual {p2, p4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object p4

    invoke-virtual {p0, p4, p2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    :cond_3
    return-void
.end method

.method protected loadObject(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "object"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-boolean v2, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->convertObjectToTileSpace:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapTileWidth:I

    int-to-float v2, v2

    div-float v2, v3, v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-boolean v4, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->convertObjectToTileSpace:Z

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapTileHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    :cond_1
    const-string v4, "x"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v4

    mul-float/2addr v4, v2

    iget-boolean v6, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v6, :cond_2

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapHeightInPixels:I

    int-to-float v6, v6

    const-string v7, "y"

    invoke-virtual {v1, v7, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v7

    sub-float/2addr v6, v7

    goto :goto_1

    :cond_2
    const-string v6, "y"

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v6

    :goto_1
    mul-float/2addr v6, v3

    const-string v7, "width"

    invoke-virtual {v1, v7, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v7

    mul-float/2addr v7, v2

    const-string v8, "height"

    invoke-virtual {v1, v8, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v8

    mul-float/2addr v8, v3

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-lez v9, :cond_a

    const-string v9, "polygon"

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string v14, "points"

    invoke-virtual {v9, v14}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v14, " "

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v14, v9

    mul-int/lit8 v14, v14, 0x2

    new-array v14, v14, [F

    move v15, v11

    :goto_2
    array-length v13, v9

    if-ge v15, v13, :cond_4

    aget-object v13, v9, v15

    const-string v5, ","

    invoke-virtual {v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v13, v15, 0x2

    aget-object v16, v5, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    mul-float v16, v16, v2

    aput v16, v14, v13

    add-int/2addr v13, v12

    aget-object v5, v5, v12

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v3

    iget-boolean v10, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v10, :cond_3

    const/4 v10, -0x1

    goto :goto_3

    :cond_3
    move v10, v12

    :goto_3
    int-to-float v10, v10

    mul-float/2addr v5, v10

    aput v5, v14, v13

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    new-instance v5, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v5, v14}, Lcom/badlogic/gdx/math/Polygon;-><init>([F)V

    invoke-virtual {v5, v4, v6}, Lcom/badlogic/gdx/math/Polygon;->setPosition(FF)V

    new-instance v10, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;

    invoke-direct {v10, v5}, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;-><init>(Lcom/badlogic/gdx/math/Polygon;)V

    goto/16 :goto_7

    :cond_5
    const-string v5, "polyline"

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v9, "points"

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v9, v5

    mul-int/lit8 v9, v9, 0x2

    new-array v9, v9, [F

    move v10, v11

    :goto_4
    array-length v13, v5

    if-ge v10, v13, :cond_7

    aget-object v13, v5, v10

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    mul-int/lit8 v14, v10, 0x2

    aget-object v15, v13, v11

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    mul-float/2addr v15, v2

    aput v15, v9, v14

    add-int/2addr v14, v12

    aget-object v13, v13, v12

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    mul-float/2addr v13, v3

    iget-boolean v15, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v15, :cond_6

    const/4 v15, -0x1

    goto :goto_5

    :cond_6
    move v15, v12

    :goto_5
    int-to-float v15, v15

    mul-float/2addr v13, v15

    aput v13, v9, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_7
    new-instance v5, Lcom/badlogic/gdx/math/Polyline;

    invoke-direct {v5, v9}, Lcom/badlogic/gdx/math/Polyline;-><init>([F)V

    invoke-virtual {v5, v4, v6}, Lcom/badlogic/gdx/math/Polyline;->setPosition(FF)V

    new-instance v10, Lcom/badlogic/gdx/maps/objects/PolylineMapObject;

    invoke-direct {v10, v5}, Lcom/badlogic/gdx/maps/objects/PolylineMapObject;-><init>(Lcom/badlogic/gdx/math/Polyline;)V

    goto :goto_7

    :cond_8
    const-string v5, "ellipse"

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v5

    if-eqz v5, :cond_a

    new-instance v10, Lcom/badlogic/gdx/maps/objects/EllipseMapObject;

    iget-boolean v5, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v5, :cond_9

    sub-float v5, v6, v8

    goto :goto_6

    :cond_9
    move v5, v6

    :goto_6
    invoke-direct {v10, v4, v5, v7, v8}, Lcom/badlogic/gdx/maps/objects/EllipseMapObject;-><init>(FFFF)V

    goto :goto_7

    :cond_a
    const/4 v10, 0x0

    :goto_7
    if-nez v10, :cond_10

    const-string v5, "gid"

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-int v5, v9

    const/high16 v9, -0x80000000

    and-int/2addr v9, v5

    if-eqz v9, :cond_b

    move v9, v12

    goto :goto_8

    :cond_b
    move v9, v11

    :goto_8
    const/high16 v10, 0x40000000    # 2.0f

    and-int/2addr v10, v5

    if-eqz v10, :cond_c

    move v10, v12

    goto :goto_9

    :cond_c
    move v10, v11

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v13

    const v14, 0x1fffffff

    and-int/2addr v14, v5

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v13

    new-instance v14, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-interface {v13}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v13

    invoke-direct {v14, v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v14, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    new-instance v10, Lcom/badlogic/gdx/maps/objects/TextureMapObject;

    invoke-direct {v10, v14}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v10}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v9

    const-string v13, "gid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v13, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setX(F)V

    iget-boolean v5, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v5, :cond_d

    sub-float v5, v6, v8

    goto :goto_a

    :cond_d
    move v5, v6

    :goto_a
    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setY(F)V

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setScaleX(F)V

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setScaleY(F)V

    const-string v5, "rotation"

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v5

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setRotation(F)V

    goto :goto_c

    :cond_e
    new-instance v10, Lcom/badlogic/gdx/maps/objects/RectangleMapObject;

    iget-boolean v5, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v5, :cond_f

    sub-float v5, v6, v8

    goto :goto_b

    :cond_f
    move v5, v6

    :goto_b
    invoke-direct {v10, v4, v5, v7, v8}, Lcom/badlogic/gdx/maps/objects/RectangleMapObject;-><init>(FFFF)V

    :cond_10
    :goto_c
    const-string v5, "name"

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/maps/MapObject;->setName(Ljava/lang/String;)V

    const-string v5, "rotation"

    invoke-virtual {v1, v5, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v10}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v13

    const-string v14, "rotation"

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v13, v14, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    const-string v5, "type"

    invoke-virtual {v1, v5, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v10}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v9

    const-string v13, "type"

    invoke-virtual {v9, v13, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    const-string v5, "id"

    invoke-virtual {v1, v5, v11}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v10}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v9

    const-string v13, "id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v13, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    invoke-virtual {v10}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v5

    const-string v9, "x"

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v5, v9, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    const-string v4, "y"

    iget-boolean v5, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v5, :cond_14

    sub-float/2addr v6, v8

    :cond_14
    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    const-string v3, "width"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    const-string v3, "height"

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "visible"

    invoke-virtual {v1, v2, v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v12, :cond_15

    goto :goto_d

    :cond_15
    move v12, v11

    :goto_d
    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/maps/MapObject;->setVisible(Z)V

    const-string v2, "properties"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v10}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/maps/MapLayer;->getObjects()Lcom/badlogic/gdx/maps/MapObjects;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/maps/MapObjects;->add(Lcom/badlogic/gdx/maps/MapObject;)V

    :cond_17
    return-void
.end method

.method protected loadObjectGroup(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 3

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectgroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/maps/MapLayer;

    invoke-direct {v1}, Lcom/badlogic/gdx/maps/MapLayer;-><init>()V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/maps/MapLayer;->setName(Ljava/lang/String;)V

    const-string v0, "properties"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/maps/MapLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_0
    const-string v0, "object"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadObject(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    :cond_2
    return-void
.end method

.method protected loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "properties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "property"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "value"

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected loadTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 13

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "layer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "width"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "height"

    invoke-virtual {p2, v2, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getParent()Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    const-string v4, "tilewidth"

    invoke-virtual {v3, v4, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getParent()Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    const-string v5, "tileheight"

    invoke-virtual {v4, v5, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-direct {v5, v0, v2, v3, v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;-><init>(IIII)V

    invoke-virtual {p0, v5, p2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadBasicLayerInfo(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    invoke-static {p2, v0, v2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->getTileIds(Lcom/badlogic/gdx/utils/XmlReader$Element;II)[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v4

    move v6, v1

    :goto_0
    if-ge v6, v2, :cond_6

    move v7, v1

    :goto_1
    if-ge v7, v0, :cond_5

    mul-int v8, v6, v0

    add-int/2addr v8, v7

    aget v8, v3, v8

    const/high16 v9, -0x80000000

    and-int/2addr v9, v8

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    move v9, v10

    goto :goto_2

    :cond_0
    move v9, v1

    :goto_2
    const/high16 v11, 0x40000000    # 2.0f

    and-int/2addr v11, v8

    if-eqz v11, :cond_1

    move v11, v10

    goto :goto_3

    :cond_1
    move v11, v1

    :goto_3
    const/high16 v12, 0x20000000

    and-int/2addr v12, v8

    if-eqz v12, :cond_2

    goto :goto_4

    :cond_2
    move v10, v1

    :goto_4
    const v12, 0x1fffffff

    and-int/2addr v8, v12

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {p0, v9, v11, v10}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->createTileLayerCell(ZZZ)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    iget-boolean v8, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v8, :cond_3

    add-int/lit8 v8, v2, -0x1

    sub-int/2addr v8, v6

    goto :goto_5

    :cond_3
    move v8, v6

    :goto_5
    invoke-virtual {v5, v7, v8, v9}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->setCell(IILcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    const-string v0, "properties"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_7
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    :cond_8
    return-void
.end method
