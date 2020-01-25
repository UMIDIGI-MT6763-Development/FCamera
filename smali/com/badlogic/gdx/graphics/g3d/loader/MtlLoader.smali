.class Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;
.super Ljava/lang/Object;
.source "ObjLoader.java"


# instance fields
.field public materials:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public getMaterial(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;-><init>()V

    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "default"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    if-eqz p1, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x1000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v9, v7

    const/4 v8, 0x0

    move v7, v6

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    if-lez v13, :cond_2

    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v15, 0x9

    if-ne v13, v15, :cond_2

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :cond_2
    const-string v13, "\\s+"

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v13, v10, v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_3

    goto :goto_0

    :cond_3
    aget-object v13, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v15, 0x23

    if-ne v13, v15, :cond_4

    goto :goto_0

    :cond_4
    aget-object v13, v10, v14

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v15, "newmtl"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    new-instance v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    invoke-direct {v13}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;-><init>()V

    iput-object v1, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    iput v7, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    iput v8, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    if-eqz v9, :cond_6

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;-><init>()V

    iput v11, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->usage:I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    iget-object v2, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    if-nez v2, :cond_5

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2, v12}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v2, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    :cond_5
    iget-object v2, v13, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_6
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    array-length v1, v10

    if-le v1, v12, :cond_7

    aget-object v1, v10, v12

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    const-string v1, "default"

    :goto_1
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move v7, v6

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_8
    const-string v15, "kd"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string v15, "ks"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    goto :goto_3

    :cond_9
    const-string v11, "tr"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "d"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_2

    :cond_a
    const-string v11, "ns"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    aget-object v8, v10, v12

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    goto/16 :goto_0

    :cond_b
    const-string v11, "map_kd"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    aget-object v10, v10, v12

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_c
    :goto_2
    aget-object v7, v10, v12

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    goto/16 :goto_0

    :cond_d
    :goto_3
    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    const/4 v13, 0x3

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    array-length v15, v10

    const/4 v5, 0x4

    if-le v15, v5, :cond_e

    aget-object v5, v10, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    goto :goto_4

    :cond_e
    move v5, v6

    :goto_4
    aget-object v10, v10, v14

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v14, "kd"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    invoke-virtual {v2, v12, v11, v13, v5}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_0

    :cond_f
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    invoke-virtual {v3, v12, v11, v13, v5}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;-><init>()V

    iput-object v1, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    iput v7, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    iput v8, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    if-eqz v9, :cond_12

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;-><init>()V

    iput v11, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->usage:I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    iget-object v2, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    if-nez v2, :cond_11

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2, v12}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v2, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    :cond_11
    iget-object v2, v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_12
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void

    :catch_0
    return-void

    :cond_13
    :goto_5
    return-void
.end method
