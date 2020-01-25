.class public Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
.super Ljava/lang/Object;
.source "ModelInstance.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;


# static fields
.field public static defaultShareKeyframes:Z = true


# instance fields
.field public final animations:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Animation;",
            ">;"
        }
    .end annotation
.end field

.field public final materials:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Material;",
            ">;"
        }
    .end annotation
.end field

.field public final model:Lcom/badlogic/gdx/graphics/g3d/Model;

.field private nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/graphics/g3d/model/NodePart;",
            "Lcom/badlogic/gdx/utils/ArrayMap<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;>;"
        }
    .end annotation
.end field

.field public final nodes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;"
        }
    .end annotation
.end field

.field public transform:Lcom/badlogic/gdx/math/Matrix4;

.field public userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;FFF)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/Model;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/Model;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    if-nez p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)V

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;Z)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V
    .locals 8

    sget-boolean v7, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    if-nez p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    invoke-virtual {p1, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object p2

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNode(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    if-eqz p5, :cond_1

    iget-object p2, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    :goto_0
    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object p2, p4, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object p2, p4, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Quaternion;->idt()Lcom/badlogic/gdx/math/Quaternion;

    iget-object p2, p4, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3, p3, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_1

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p4}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->hasParent()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object p2

    iget-object p2, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->setBones()V

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, p1, p7}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    return-void
.end method

.method public varargs constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    if-nez p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    if-nez p3, :cond_1

    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;)V

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;[Ljava/lang/String;)V

    :goto_0
    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    sget-boolean p2, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/Model;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;Z)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;ZZZ)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V
    .locals 1

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    sget-boolean v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    if-nez p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;)V

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, p1, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    return-void
.end method

.method private copyAnimations(Ljava/lang/Iterable;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Animation;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/model/Animation;-><init>()V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;-><init>()V

    iput-object v3, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-eqz p2, :cond_3

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iput-object v3, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iput-object v3, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iput-object v2, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    goto/16 :goto_5

    :cond_3
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v3, :cond_4

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v3, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v8, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    invoke-direct {v7, v8, v5}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v3, :cond_5

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v3, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v8, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    invoke-direct {v7, v8, v5}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-eqz v3, :cond_6

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v3, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v7, v3, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    invoke-direct {v6, v7, v3}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    :goto_5
    iget-object v2, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-nez v2, :cond_7

    iget-object v2, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-nez v2, :cond_7

    iget-object v2, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-eqz v2, :cond_1

    :cond_7
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private copyNode(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;-><init>()V

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodePart(Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChildren()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNode(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private copyNodePart(Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>()V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/Material;->copy()Lcom/badlogic/gdx/graphics/g3d/Material;

    move-result-object p1

    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Material;

    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    :goto_0
    return-object v0
.end method

.method private copyNodes(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNode(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->setBones()V

    return-void
.end method

.method private copyNodes(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNode(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->setBones()V

    return-void
.end method

.method private varargs copyNodes(Lcom/badlogic/gdx/utils/Array;[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    array-length v4, p2

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p2, v5

    iget-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNode(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->setBones()V

    return-void
.end method

.method private setBones()V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    new-instance v3, Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v4, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/utils/ArrayMap;

    iget v4, v4, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const-class v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const-class v6, Lcom/badlogic/gdx/math/Matrix4;

    const/4 v7, 0x1

    invoke-direct {v3, v7, v4, v5, v6}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    :cond_1
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ArrayMap;->clear()V

    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ArrayMap;->entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v4, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v5, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v5

    iget-object v3, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v3, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/utils/ArrayMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    new-array v3, v3, [Lcom/badlogic/gdx/math/Matrix4;

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    const/4 v2, 0x0

    :goto_1
    iget-object v3, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    new-instance v4, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object p1

    return-object p1
.end method

.method public calculateTransforms()V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateTransforms(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateBoneTransforms(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V

    return-object v0
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-result-object p1

    return-object p1
.end method

.method public getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaterial(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getMaterial(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/Material;

    move-result-object p1

    return-object p1
.end method

.method public getMaterial(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/Material;

    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/Material;

    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object p1

    return-object p1
.end method

.method public getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object p1

    return-object p1
.end method

.method public getNode(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object p1

    return-object p1
.end method

.method public getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object p1

    return-object p1
.end method

.method public getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 2

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object p1

    return-object p1
.end method

.method public getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->setRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object p3, p3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    if-eqz p3, :cond_0

    iget-object p3, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p3

    iget-object p2, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    :goto_0
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->userData:Ljava/lang/Object;

    iput-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->userData:Ljava/lang/Object;

    return-object p1
.end method

.method protected getRenderables(Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {p0, v2, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChildren()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderables(Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {p0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderables(Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    goto :goto_0

    :cond_0
    return-void
.end method
