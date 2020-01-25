.class public Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
.super Ljava/lang/Object;
.source "MeshPart.java"


# instance fields
.field public id:Ljava/lang/String;

.field public indexOffset:I

.field public mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field public numVertices:I

.field public primitiveType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)V
    .locals 6

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Mesh;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Mesh;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    iput p5, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    return-void
.end method


# virtual methods
.method public equals(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Z
    .locals 2

    if-eq p1, p0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    instance-of v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->equals(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Z

    move-result p1

    return p1
.end method
