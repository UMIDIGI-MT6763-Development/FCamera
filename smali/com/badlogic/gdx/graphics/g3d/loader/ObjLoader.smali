.class public Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;
.super Lcom/badlogic/gdx/assets/loaders/ModelLoader;
.source "ObjLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;,
        Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/ModelLoader<",
        "Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;",
        ">;"
    }
.end annotation


# static fields
.field public static logWarning:Z


# instance fields
.field final groups:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;",
            ">;"
        }
    .end annotation
.end field

.field final norms:Lcom/badlogic/gdx/utils/FloatArray;

.field final uvs:Lcom/badlogic/gdx/utils/FloatArray;

.field final verts:Lcom/badlogic/gdx/utils/FloatArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    new-instance p1, Lcom/badlogic/gdx/utils/FloatArray;

    const/16 v0, 0x12c

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance p1, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance p1, Lcom/badlogic/gdx/utils/FloatArray;

    const/16 v0, 0xc8

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method private getIndex(Ljava/lang/String;I)I
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    add-int/2addr p2, p1

    return p2

    :cond_1
    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private setActiveGroup(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;-><init>(Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public loadModel(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->loadModel(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .locals 0

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    move-result-object p1

    return-object p1
.end method

.method public loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p2, p2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;->flipV:Z

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->loadModelData(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    move-result-object p1

    return-object p1
.end method

.method protected loadModelData(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .locals 20

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->logWarning:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "ObjLoader"

    const-string v3, "Wavefront (OBJ) is not fully supported, consult the documentation for more information"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;-><init>()V

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    const-string v3, "default"

    invoke-direct {v2, v0, v3}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;-><init>(Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x1000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :cond_1
    :goto_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v5, :cond_17

    const-string v11, "\\s+"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v11, v5

    if-ge v11, v10, :cond_2

    goto/16 :goto_4

    :cond_2
    aget-object v11, v5, v9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3

    goto :goto_0

    :cond_3
    aget-object v11, v5, v9

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x23

    if-ne v11, v12, :cond_4

    goto :goto_0

    :cond_4
    const/16 v12, 0x76

    if-ne v11, v12, :cond_8

    aget-object v11, v5, v9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v10, :cond_5

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    aget-object v9, v5, v10

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_0

    :cond_5
    aget-object v11, v5, v9

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x6e

    if-ne v11, v12, :cond_6

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    aget-object v9, v5, v10

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto/16 :goto_0

    :cond_6
    aget-object v7, v5, v9

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x74

    if-ne v7, v9, :cond_1

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    aget-object v9, v5, v10

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    if-eqz p2, :cond_7

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v6, v5

    goto :goto_1

    :cond_7
    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    :goto_1
    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0x66

    if-ne v11, v6, :cond_11

    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->faces:Lcom/badlogic/gdx/utils/Array;

    move v7, v10

    :goto_2
    array-length v11, v5

    sub-int/2addr v11, v8

    if-ge v7, v11, :cond_1

    aget-object v11, v5, v10

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v12, v11, v9

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    iget v13, v13, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v0, v12, v13}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    array-length v12, v11

    if-le v12, v8, :cond_a

    if-ne v7, v10, :cond_9

    iput-boolean v10, v2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->hasNorms:Z

    :cond_9
    aget-object v12, v11, v8

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    iget v13, v13, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v0, v12, v13}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_a
    array-length v12, v11

    if-le v12, v10, :cond_c

    aget-object v12, v11, v10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_c

    if-ne v7, v10, :cond_b

    iput-boolean v10, v2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->hasUVs:Z

    :cond_b
    aget-object v11, v11, v10

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    iget v12, v12, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v0, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_c
    add-int/lit8 v7, v7, 0x1

    aget-object v11, v5, v7

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v12, v11, v9

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    iget v13, v13, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v0, v12, v13}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    array-length v12, v11

    if-le v12, v8, :cond_d

    aget-object v12, v11, v8

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    iget v13, v13, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v0, v12, v13}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_d
    array-length v12, v11

    if-le v12, v10, :cond_e

    aget-object v12, v11, v10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_e

    aget-object v11, v11, v10

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    iget v12, v12, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v0, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_e
    add-int/lit8 v7, v7, 0x1

    aget-object v11, v5, v7

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v12, v11, v9

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    iget v13, v13, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v0, v12, v13}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    array-length v12, v11

    if-le v12, v8, :cond_f

    aget-object v12, v11, v8

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    iget v13, v13, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v0, v12, v13}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_f
    array-length v12, v11

    if-le v12, v10, :cond_10

    aget-object v12, v11, v10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_10

    aget-object v11, v11, v10

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    iget v12, v12, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-direct {v0, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_10
    iget v11, v2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->numFaces:I

    add-int/2addr v11, v10

    iput v11, v2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->numFaces:I

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_2

    :cond_11
    const/16 v6, 0x6f

    if-eq v11, v6, :cond_15

    const/16 v6, 0x67

    if-ne v11, v6, :cond_12

    goto :goto_3

    :cond_12
    aget-object v6, v5, v9

    const-string v7, "mtllib"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    aget-object v5, v5, v10

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->load(Lcom/badlogic/gdx/files/FileHandle;)V

    goto/16 :goto_0

    :cond_13
    aget-object v6, v5, v9

    const-string v7, "usemtl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    array-length v6, v5

    if-ne v6, v10, :cond_14

    const-string v5, "default"

    iput-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->materialName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_14
    aget-object v5, v5, v10

    iput-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->materialName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    :goto_3
    array-length v2, v5

    if-le v2, v10, :cond_16

    aget-object v2, v5, v10

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->setActiveGroup(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    move-result-object v2

    goto/16 :goto_0

    :cond_16
    const-string v2, "default"

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->setActiveGroup(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    move-result-object v2

    goto/16 :goto_0

    :cond_17
    :goto_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v9

    :goto_5
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_19

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->numFaces:I

    if-ge v3, v10, :cond_18

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_18
    add-int/2addr v2, v10

    goto :goto_5

    :cond_19
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v10, :cond_1a

    return-object v4

    :cond_1a
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;-><init>()V

    move v4, v9

    move v5, v4

    :goto_6
    if-ge v4, v2, :cond_24

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v11, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->faces:Lcom/badlogic/gdx/utils/Array;

    iget v13, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v14, v11, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->numFaces:I

    iget-boolean v15, v11, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->hasNorms:Z

    iget-boolean v9, v11, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->hasUVs:Z

    mul-int/2addr v14, v7

    if-eqz v15, :cond_1b

    move/from16 v16, v7

    goto :goto_7

    :cond_1b
    const/16 v16, 0x0

    :goto_7
    add-int/lit8 v16, v16, 0x3

    if-eqz v9, :cond_1c

    move/from16 v17, v8

    goto :goto_8

    :cond_1c
    const/16 v17, 0x0

    :goto_8
    add-int v16, v16, v17

    mul-int v6, v14, v16

    new-array v6, v6, [F

    const/4 v10, 0x0

    const/16 v18, 0x0

    :goto_9
    if-ge v10, v13, :cond_1f

    add-int/lit8 v8, v10, 0x1

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    mul-int/2addr v10, v7

    add-int/lit8 v19, v18, 0x1

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    move/from16 p1, v2

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v7

    aput v7, v6, v18

    add-int/lit8 v7, v19, 0x1

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    move/from16 v18, v13

    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    aput v2, v6, v19

    add-int/lit8 v2, v7, 0x1

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v10

    aput v10, v6, v7

    if-eqz v15, :cond_1d

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v10, 0x3

    mul-int/2addr v8, v10

    add-int/lit8 v10, v2, 0x1

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    move/from16 p2, v7

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v13, v8}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v8

    aput v8, v6, v2

    add-int/lit8 v2, v10, 0x1

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v7

    aput v7, v6, v10

    add-int/lit8 v7, v2, 0x1

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v8, v13}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v8

    aput v8, v6, v2

    move/from16 v8, p2

    move v2, v7

    :cond_1d
    if-eqz v9, :cond_1e

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v10, 0x2

    mul-int/2addr v8, v10

    add-int/lit8 v10, v2, 0x1

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    move/from16 p2, v7

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v13, v8}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v8

    aput v8, v6, v2

    add-int/lit8 v2, v10, 0x1

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v7

    aput v7, v6, v10

    move/from16 v10, p2

    goto :goto_a

    :cond_1e
    move v10, v8

    :goto_a
    move/from16 v13, v18

    const/4 v7, 0x3

    const/4 v8, 0x2

    move/from16 v18, v2

    move/from16 v2, p1

    goto/16 :goto_9

    :cond_1f
    move/from16 p1, v2

    const/16 v2, 0x7fff

    if-lt v14, v2, :cond_20

    const/4 v14, 0x0

    :cond_20
    new-array v2, v14, [S

    if-lez v14, :cond_21

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v14, :cond_21

    int-to-short v8, v7

    aput-short v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_21
    new-instance v7, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    new-instance v8, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v10, "a_position"

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {v8, v12, v13, v10}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    if-eqz v15, :cond_22

    new-instance v8, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v10, 0x8

    const-string v12, "a_normal"

    invoke-direct {v8, v10, v13, v12}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_22
    if-eqz v9, :cond_23

    new-instance v8, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v9, 0x10

    const-string v10, "a_texCoord0"

    const/4 v12, 0x2

    invoke-direct {v8, v9, v12, v10}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_c

    :cond_23
    const/4 v12, 0x2

    :goto_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "node"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    add-int/2addr v5, v9

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mesh"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "part"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    invoke-direct {v14}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;-><init>()V

    iput-object v8, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->id:Ljava/lang/String;

    iput-object v9, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->meshId:Ljava/lang/String;

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v8, v15, v15, v15}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v8, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->scale:Lcom/badlogic/gdx/math/Vector3;

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v8}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v8, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->translation:Lcom/badlogic/gdx/math/Vector3;

    new-instance v8, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v8}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    iput-object v8, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    new-instance v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    invoke-direct {v8}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;-><init>()V

    iput-object v10, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->meshPartId:Ljava/lang/String;

    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->materialName:Ljava/lang/String;

    iput-object v12, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->materialId:Ljava/lang/String;

    const/4 v12, 0x1

    new-array v13, v12, [Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    const/4 v12, 0x0

    aput-object v8, v13, v12

    iput-object v13, v14, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    new-instance v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    invoke-direct {v8}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;-><init>()V

    iput-object v10, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->id:Ljava/lang/String;

    iput-object v2, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->indices:[S

    const/4 v2, 0x4

    iput v2, v8, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->primitiveType:I

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;-><init>()V

    iput-object v9, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->id:Ljava/lang/String;

    const-class v9, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    iput-object v7, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    iput-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->vertices:[F

    const/4 v6, 0x1

    new-array v7, v6, [Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iput-object v7, v2, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    iget-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v14}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->meshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, v11, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->materialName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->getMaterial(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    move-result-object v2

    iget-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v2, p1

    move v10, v6

    move v6, v15

    const/4 v7, 0x3

    const/4 v8, 0x2

    goto/16 :goto_6

    :cond_24
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lez v1, :cond_25

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    :cond_25
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lez v1, :cond_26

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    :cond_26
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lez v1, :cond_27

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    :cond_27
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_28

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_28
    return-object v3

    :catch_0
    return-object v4
.end method
