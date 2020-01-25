.class public Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;
.super Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;
.source "TmxMapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<",
        "Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    check-cast p3, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    if-eqz p3, :cond_0

    iget-boolean v1, p3, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->generateMipMaps:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-direct {v2}, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;-><init>()V

    iput-boolean v1, v2, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->genMipMaps:Z

    if-eqz p3, :cond_1

    iget-object v1, p3, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v1, v2, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object p3, p3, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object p3, v2, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    :cond_1
    iget-object p3, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, p3, p2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadTilesets(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v3, Lcom/badlogic/gdx/assets/AssetDescriptor;

    const-class v4, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v3, v1, v4, v2}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, p3, p2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadImages(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    const-class v3, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, p3, v3, v2}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    return-object v0

    :catch_0
    move-exception p2

    new-instance p3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t load tilemap \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public load(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->load(Ljava/lang/String;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 7

    :try_start_0
    iget-boolean v0, p2, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->convertObjectToTileSpace:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->convertObjectToTileSpace:Z

    iget-boolean v0, p2, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->flipY:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->flipY:Z

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v2, v0}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadTilesets(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v3, v0}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadImages(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    iget-boolean v5, p2, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->generateMipMaps:Z

    invoke-direct {v4, v3, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    iget-object v5, p2, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v6, p2, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;

    invoke-direct {p2, v1}, Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v2, v0, p2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadTilemap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p2

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->setOwnedResources(Lcom/badlogic/gdx/utils/Array;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

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

    check-cast p4, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    if-eqz p4, :cond_0

    iget-boolean v0, p4, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->convertObjectToTileSpace:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->convertObjectToTileSpace:Z

    iget-boolean p4, p4, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;->flipY:Z

    iput-boolean p4, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->flipY:Z

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->convertObjectToTileSpace:Z

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->flipY:Z

    :goto_0
    :try_start_0
    iget-object p4, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    new-instance v0, Lcom/badlogic/gdx/maps/ImageResolver$AssetManagerImageResolver;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/maps/ImageResolver$AssetManagerImageResolver;-><init>(Lcom/badlogic/gdx/assets/AssetManager;)V

    invoke-virtual {p0, p4, p3, v0}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadTilemap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;
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

.method protected loadImages(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const-string v1, "imagelayer"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    const-string v2, "source"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p2, v1}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    return-object p1
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 0

    check-cast p4, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TmxMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p1

    return-object p1
.end method

.method protected loadTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tileset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "name"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "firstgid"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "tilewidth"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v7

    const-string v9, "tileheight"

    invoke-virtual {v1, v9, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "spacing"

    invoke-virtual {v1, v10, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "margin"

    invoke-virtual {v1, v11, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "source"

    invoke-virtual {v1, v12, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    if-eqz v12, :cond_2

    invoke-static {v2, v12}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    :try_start_0
    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    const-string v7, "name"

    invoke-virtual {v4, v7, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "tilewidth"

    invoke-virtual {v4, v9, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "tileheight"

    invoke-virtual {v4, v10, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "spacing"

    invoke-virtual {v4, v11, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "margin"

    invoke-virtual {v4, v12, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v12

    const-string v14, "tileoffset"

    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string v15, "x"

    invoke-virtual {v14, v15, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v15

    const-string v5, "y"

    invoke-virtual {v14, v5, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v8

    move v15, v5

    :goto_0
    const-string v14, "image"

    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v14

    if-eqz v14, :cond_1

    const-string v13, "source"

    invoke-virtual {v14, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 p2, v4

    const-string v4, "width"

    invoke-virtual {v14, v4, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v4

    move/from16 v16, v4

    const-string v4, "height"

    invoke-virtual {v14, v4, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v1, v13}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object/from16 p2, v4

    move v4, v8

    move/from16 v16, v4

    const/4 v1, 0x0

    :goto_1
    move v8, v5

    move/from16 v14, v16

    move v5, v4

    move-object v4, v7

    move v7, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v1

    move-object/from16 v1, p2

    goto :goto_3

    :catch_0
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error parsing external tileset."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v5, "tileoffset"

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v12, "x"

    invoke-virtual {v5, v12, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v12

    const-string v14, "y"

    invoke-virtual {v5, v14, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v5

    move v15, v12

    goto :goto_2

    :cond_3
    move v5, v8

    move v15, v5

    :goto_2
    const-string v12, "image"

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v12

    if-eqz v12, :cond_4

    const-string v13, "source"

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "width"

    invoke-virtual {v12, v14, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v14

    const-string v1, "height"

    invoke-virtual {v12, v1, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v2, v13}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    move v8, v5

    move v5, v1

    move-object/from16 v1, p2

    goto :goto_3

    :cond_4
    move v14, v8

    move-object/from16 v1, p2

    const/4 v12, 0x0

    move v8, v5

    move v5, v14

    :goto_3
    new-instance v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    invoke-direct {v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;-><init>()V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->setName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v4

    move-object/from16 p2, v1

    const-string v1, "firstgid"

    move/from16 v22, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v1, v8}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/maps/ImageResolver;->getImage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v3

    const-string v4, "imagesource"

    invoke-virtual {v3, v4, v13}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "imagewidth"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "imageheight"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "tilewidth"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "tileheight"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "margin"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "spacing"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    sub-int/2addr v4, v9

    move v8, v6

    move v5, v11

    :goto_4
    if-gt v5, v4, :cond_7

    move v12, v8

    move v8, v11

    :goto_5
    if-gt v8, v3, :cond_6

    new-instance v13, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v16, v13

    move-object/from16 v17, v1

    move/from16 v18, v8

    move/from16 v19, v5

    move/from16 v20, v7

    move/from16 v21, v9

    invoke-direct/range {v16 .. v21}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    new-instance v14, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-direct {v14, v13}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-interface {v14, v12}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setId(I)V

    int-to-float v13, v15

    invoke-interface {v14, v13}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetX(F)V

    iget-boolean v13, v0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->flipY:Z

    if-eqz v13, :cond_5

    move-object/from16 p3, v1

    move/from16 v13, v22

    neg-int v1, v13

    int-to-float v1, v1

    goto :goto_6

    :cond_5
    move-object/from16 p3, v1

    move/from16 v13, v22

    int-to-float v1, v13

    :goto_6
    invoke-interface {v14, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetY(F)V

    add-int/lit8 v1, v12, 0x1

    invoke-virtual {v2, v12, v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    add-int v12, v7, v10

    add-int/2addr v8, v12

    move v12, v1

    move/from16 v22, v13

    move-object/from16 v1, p3

    goto :goto_5

    :cond_6
    move-object/from16 p3, v1

    move/from16 v13, v22

    add-int v1, v9, v10

    add-int/2addr v5, v1

    move-object/from16 v1, p3

    move v8, v12

    goto :goto_4

    :cond_7
    move-object/from16 v4, p2

    move-object v7, v2

    goto/16 :goto_a

    :cond_8
    move/from16 v13, v22

    const-string v1, "tile"

    move-object/from16 v4, p2

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v7, "image"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v7

    if-eqz v7, :cond_9

    const-string v8, "source"

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "width"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    const-string v9, "height"

    invoke-virtual {v7, v9, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-object v7, v2

    move-object/from16 v2, p3

    invoke-static {v2, v8}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    move-object v12, v8

    goto :goto_8

    :cond_9
    move-object v7, v2

    move-object/from16 v2, p3

    :goto_8
    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lcom/badlogic/gdx/maps/ImageResolver;->getImage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v8

    new-instance v9, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-direct {v9, v8}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const-string v8, "id"

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v6

    invoke-interface {v9, v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setId(I)V

    int-to-float v5, v15

    invoke-interface {v9, v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetX(F)V

    iget-boolean v5, v0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->flipY:Z

    if-eqz v5, :cond_a

    neg-int v5, v13

    int-to-float v5, v5

    goto :goto_9

    :cond_a
    int-to-float v5, v13

    :goto_9
    invoke-interface {v9, v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetY(F)V

    invoke-interface {v9}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getId()I

    move-result v5

    invoke-virtual {v7, v5, v9}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    move-object v2, v7

    goto :goto_7

    :cond_b
    move-object v7, v2

    :goto_a
    const-string v1, "tile"

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v5, "id"

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v5

    if-eqz v5, :cond_11

    const-string v9, "animation"

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v9

    if-eqz v9, :cond_e

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

    if-eqz v12, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v13, "tileid"

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v7, v13}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const-string v13, "duration"

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_c

    :cond_d
    new-instance v9, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    invoke-direct {v9, v11, v10}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;-><init>(Lcom/badlogic/gdx/utils/IntArray;Lcom/badlogic/gdx/utils/Array;)V

    invoke-interface {v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getId()I

    move-result v5

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->setId(I)V

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move-object v5, v9

    :cond_e
    const-string v9, "terrain"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-interface {v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v11

    const-string v12, "terrain"

    invoke-virtual {v11, v12, v9}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    const-string v9, "probability"

    invoke-virtual {v3, v9, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-interface {v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v11

    const-string v12, "probability"

    invoke-virtual {v11, v12, v9}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    const-string v9, "properties"

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-interface {v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto/16 :goto_b

    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_12
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->getId()I

    move-result v3

    invoke-virtual {v7, v3, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    goto :goto_d

    :cond_13
    const-string v1, "properties"

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->addTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;)V

    :cond_15
    return-void
.end method

.method protected loadTilemap(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
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
    iput v6, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapTileWidth:I

    iput v7, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapTileHeight:I

    mul-int/2addr v3, v6

    iput v3, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapWidthInPixels:I

    mul-int v2, v5, v7

    iput v2, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapHeightInPixels:I

    if-eqz v1, :cond_2

    const-string v2, "staggered"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-le v5, v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapWidthInPixels:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapWidthInPixels:I

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapHeightInPixels:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->mapHeightInPixels:I

    :cond_2
    const-string v1, "properties"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_3
    const-string v1, "tileset"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->removeChild(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v1

    :goto_1
    if-ge v4, v1, :cond_8

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "layer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_2

    :cond_5
    const-string v5, "objectgroup"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadObjectGroup(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_2

    :cond_6
    const-string v5, "imagelayer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->loadImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    return-object v0
.end method

.method protected loadTilesets(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const-string v1, "tileset"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v2, "source"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p2, v2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "image"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    const-string v3, "source"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v3, "tile"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v4, "image"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    const-string v4, "source"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v2, "image"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "image"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "tile"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v3, "image"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    const-string v3, "source"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/badlogic/gdx/maps/tiled/TmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    return-object v0
.end method
