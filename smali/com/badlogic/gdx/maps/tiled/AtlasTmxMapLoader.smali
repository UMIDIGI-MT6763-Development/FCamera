.class public Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;
.super Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;
.source "AtlasTmxMapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;,
        Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<",
        "Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;",
        ">;"
    }
.end annotation


# instance fields
.field protected trackedTextures:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->trackedTextures:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->trackedTextures:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method private setTextureFilters(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->trackedTextures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->trackedTextures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    check-cast p3, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    :try_start_0
    iget-object p3, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p3

    iput-object p3, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    iget-object p3, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v0, "properties"

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string v0, "property"

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "atlas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v0}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    const-class v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object p1

    :catch_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Unable to parse .tmx file."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public load(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->load(Ljava/lang/String;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 4

    if-eqz p2, :cond_0

    :try_start_0
    iget-boolean v0, p2, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->convertObjectToTileSpace:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->convertObjectToTileSpace:Z

    iget-boolean v0, p2, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->flipY:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->flipY:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->convertObjectToTileSpace:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->flipY:Z

    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v2, v0}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadAtlas(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$DirectAtlasResolver;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$DirectAtlasResolver;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v3, v0, v2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadMap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->setOwnedResources(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v1, p2, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object p2, p2, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->setTextureFilters(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    return-object v0

    :cond_1
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Couldn\'t load atlas"

    invoke-direct {p2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t load tilemap \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0

    check-cast p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    if-eqz p4, :cond_0

    iget-boolean v0, p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->convertObjectToTileSpace:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->convertObjectToTileSpace:Z

    iget-boolean p4, p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->flipY:Z

    iput-boolean p4, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->flipY:Z

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->convertObjectToTileSpace:Z

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->flipY:Z

    :goto_0
    :try_start_0
    iget-object p4, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    new-instance v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$AssetManagerAtlasResolver;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$AssetManagerAtlasResolver;-><init>(Lcom/badlogic/gdx/assets/AssetManager;)V

    invoke-virtual {p0, p4, p3, v0}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadMap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t load tilemap \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method protected loadAtlas(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "properties"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "property"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v2, "name"

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "atlas"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p2, v3}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".atlas"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method protected loadMap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 11

    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;-><init>()V

    const-string v1, "orientation"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "width"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "height"

    invoke-virtual {p1, v5, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "tilewidth"

    invoke-virtual {p1, v6, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "tileheight"

    invoke-virtual {p1, v7, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "backgroundcolor"

    invoke-virtual {p1, v8, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v8

    if-eqz v1, :cond_0

    const-string v9, "orientation"

    invoke-virtual {v8, v9, v1}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v9, "width"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v9, "height"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v9, "tilewidth"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v9, "tileheight"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    const-string v9, "backgroundcolor"

    invoke-virtual {v8, v9, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iput v6, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapTileWidth:I

    iput v7, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapTileHeight:I

    mul-int/2addr v3, v6

    iput v3, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapWidthInPixels:I

    mul-int v2, v5, v7

    iput v2, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapHeightInPixels:I

    if-eqz v1, :cond_2

    const-string v2, "staggered"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-le v5, v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapWidthInPixels:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapWidthInPixels:I

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapHeightInPixels:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->mapHeightInPixels:I

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v4, v1, :cond_7

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "properties"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_1

    :cond_3
    const-string v5, "tileset"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadTileset(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;)V

    goto :goto_1

    :cond_4
    const-string v5, "layer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_1

    :cond_5
    const-string v5, "objectgroup"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadObjectGroup(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 0

    if-eqz p4, :cond_0

    iget-object p1, p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object p2, p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->setTextureFilters(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    return-object p1
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 0

    check-cast p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p1

    return-object p1
.end method

.method protected loadTileset(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tileset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "name"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "firstgid"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "tilewidth"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v6

    const-string v8, "tileheight"

    invoke-virtual {v1, v8, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "spacing"

    invoke-virtual {v1, v9, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "margin"

    invoke-virtual {v1, v10, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "source"

    invoke-virtual {v1, v11, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    if-eqz v11, :cond_2

    invoke-static {v2, v11}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    :try_start_0
    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    const-string v6, "name"

    invoke-virtual {v3, v6, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "tilewidth"

    invoke-virtual {v3, v8, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "tileheight"

    invoke-virtual {v3, v9, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "spacing"

    invoke-virtual {v3, v10, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "margin"

    invoke-virtual {v3, v11, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v11

    const-string v13, "tileoffset"

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string v14, "x"

    invoke-virtual {v13, v14, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "y"

    invoke-virtual {v13, v15, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v13

    goto :goto_0

    :cond_0
    move v13, v7

    move v14, v13

    :goto_0
    const-string v15, "image"

    invoke-virtual {v3, v15}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v15

    if-eqz v15, :cond_1

    const-string v12, "source"

    invoke-virtual {v15, v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "width"

    invoke-virtual {v15, v4, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 p2, v3

    const-string v3, "height"

    invoke-virtual {v15, v3, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v12}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object/from16 p2, v3

    move v3, v7

    move v4, v3

    :goto_1
    move-object/from16 v1, p2

    move/from16 v16, v4

    move v4, v3

    move-object v3, v6

    move v6, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move/from16 v11, v16

    goto :goto_3

    :catch_0
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error parsing external tileset."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v4, "tileoffset"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v11, "x"

    invoke-virtual {v4, v11, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v11

    const-string v13, "y"

    invoke-virtual {v4, v13, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v4

    move v13, v4

    move v14, v11

    goto :goto_2

    :cond_3
    move v13, v7

    move v14, v13

    :goto_2
    const-string v4, "image"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v11, "source"

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v11, "width"

    invoke-virtual {v4, v11, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v11

    const-string v15, "height"

    invoke-virtual {v4, v15, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v12}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    goto :goto_3

    :cond_4
    move v4, v7

    move v11, v4

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v15

    const-string v7, "atlas"

    move-object/from16 p2, v1

    const-class v1, Ljava/lang/String;

    invoke-virtual {v15, v7, v1}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ".atlas"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_1a

    invoke-static {v2, v1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, p4

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;->getAtlas(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getTextures()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 p3, v7

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->trackedTextures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move-object/from16 v7, p3

    goto :goto_4

    :cond_6
    new-instance v7, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    invoke-direct {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;-><init>()V

    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v15

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->setName(Ljava/lang/String;)V

    const-string v3, "firstgid"

    move-object/from16 p3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v3, v7}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "imagesource"

    invoke-virtual {v15, v3, v12}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "imagewidth"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v3, v7}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "imageheight"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "tilewidth"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "tileheight"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "margin"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "spacing"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v3, :cond_8

    new-instance v4, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-direct {v4, v3}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    add-int/2addr v3, v5

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->setId(I)V

    int-to-float v6, v14

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->setOffsetX(F)V

    iget-boolean v6, v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->flipY:Z

    if-eqz v6, :cond_7

    neg-int v6, v13

    int-to-float v6, v6

    goto :goto_6

    :cond_7
    int-to-float v6, v13

    :goto_6
    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;->setOffsetY(F)V

    move-object/from16 v6, p3

    invoke-virtual {v6, v3, v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    goto :goto_7

    :cond_8
    move-object/from16 v6, p3

    :goto_7
    move-object/from16 p3, v6

    goto :goto_5

    :cond_9
    move-object/from16 v6, p3

    const-string v1, "tile"

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v7, "id"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v9

    if-nez v9, :cond_d

    const-string v10, "image"

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v10

    if-eqz v10, :cond_d

    const-string v9, "source"

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v8

    if-eqz v8, :cond_c

    new-instance v9, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-direct {v9, v8}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-interface {v9, v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setId(I)V

    int-to-float v8, v14

    invoke-interface {v9, v8}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetX(F)V

    iget-boolean v8, v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->flipY:Z

    if-eqz v8, :cond_b

    neg-int v8, v13

    int-to-float v8, v8

    goto :goto_9

    :cond_b
    int-to-float v8, v13

    :goto_9
    invoke-interface {v9, v8}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetY(F)V

    invoke-virtual {v6, v7, v9}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    goto :goto_a

    :cond_c
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tileset region not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_a
    if-eqz v9, :cond_a

    const-string v7, "terrain"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-interface {v9}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v10

    const-string v11, "terrain"

    invoke-virtual {v10, v11, v7}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    const-string v7, "probability"

    invoke-virtual {v4, v7, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-interface {v9}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v8

    const-string v10, "probability"

    invoke-virtual {v8, v10, v7}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    const-string v7, "properties"

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-interface {v9}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v7

    invoke-virtual {v0, v7, v4}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto/16 :goto_8

    :cond_10
    const-string v1, "tile"

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v7, "id"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v7

    if-eqz v7, :cond_16

    const-string v9, "animation"

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v9

    if-eqz v9, :cond_13

    new-instance v10, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    new-instance v11, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v11}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    const-string v12, "frame"

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v13, "tileid"

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {v6, v13}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const-string v13, "duration"

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_c

    :cond_12
    new-instance v9, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    invoke-direct {v9, v11, v10}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;-><init>(Lcom/badlogic/gdx/utils/IntArray;Lcom/badlogic/gdx/utils/Array;)V

    invoke-interface {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getId()I

    move-result v7

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->setId(I)V

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move-object v7, v9

    :cond_13
    const-string v9, "terrain"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_14

    invoke-interface {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v11

    const-string v12, "terrain"

    invoke-virtual {v11, v12, v9}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
    const-string v9, "probability"

    invoke-virtual {v4, v9, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15

    invoke-interface {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v11

    const-string v12, "probability"

    invoke-virtual {v11, v12, v9}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_15
    const-string v9, "properties"

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-interface {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v7

    invoke-virtual {v0, v7, v4}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto/16 :goto_b

    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_17
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->getId()I

    move-result v4

    invoke-virtual {v6, v4, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    goto :goto_d

    :cond_18
    const-string v1, "properties"

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v6}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->addTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;)V

    goto :goto_e

    :cond_1a
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "The map is missing the \'atlas\' property"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    :goto_e
    return-void
.end method
