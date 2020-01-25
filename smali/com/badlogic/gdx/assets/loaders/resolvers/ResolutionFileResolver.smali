.class public Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;
.super Ljava/lang/Object;
.source "ResolutionFileResolver.java"

# interfaces
.implements Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
    }
.end annotation


# instance fields
.field protected final baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

.field protected final descriptors:[Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;


# direct methods
.method public varargs constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;[Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    iput-object p2, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->descriptors:[Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one Resolution needs to be supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs choose([Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;)Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
    .locals 8

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    aget-object v3, p0, v2

    if-ge v0, v1, :cond_1

    array-length v4, p0

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, p0, v2

    iget v6, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    if-lt v0, v6, :cond_0

    iget v6, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    iget v7, v3, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    if-lt v6, v7, :cond_0

    iget v6, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    if-lt v1, v6, :cond_0

    iget v5, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    iget v6, v3, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    if-lt v5, v6, :cond_0

    aget-object v3, p0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v4, p0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, p0, v2

    iget v6, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    if-lt v0, v6, :cond_2

    iget v6, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    iget v7, v3, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    if-lt v6, v7, :cond_2

    iget v6, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    if-lt v1, v6, :cond_2

    iget v5, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    iget v6, v3, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    if-lt v5, v6, :cond_2

    aget-object v3, p0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v3
.end method


# virtual methods
.method public resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->descriptors:[Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;

    invoke-static {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->choose([Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;)Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/files/FileHandle;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->folder:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->resolve(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected resolve(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
