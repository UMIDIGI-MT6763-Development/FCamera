.class public Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;
.super Ljava/lang/Object;
.source "MeshBuilder.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;


# static fields
.field private static indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

.field private static final matrices4Array:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;"
        }
    .end annotation
.end field

.field private static final matrices4Pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;"
        }
    .end annotation
.end field

.field private static final tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

.field private static final tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

.field private static final vTmp:Lcom/badlogic/gdx/math/Vector3;

.field private static final vectorArray:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation
.end field

.field private static final vectorPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field private colOffset:I

.field private colSize:I

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private cpOffset:I

.field private hasColor:Z

.field private hasUVTransform:Z

.field private indices:Lcom/badlogic/gdx/utils/ShortArray;

.field private istart:I

.field private lastIndex:S

.field private final matTmp1:Lcom/badlogic/gdx/math/Matrix4;

.field private norOffset:I

.field private final normalTransform:Lcom/badlogic/gdx/math/Matrix3;

.field private part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

.field private parts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;",
            ">;"
        }
    .end annotation
.end field

.field private posOffset:I

.field private posSize:I

.field private final positionTransform:Lcom/badlogic/gdx/math/Matrix4;

.field private primitiveType:I

.field private stride:I

.field private final tempC1:Lcom/badlogic/gdx/graphics/Color;

.field private final tempV1:Lcom/badlogic/gdx/math/Vector3;

.field private final tempV2:Lcom/badlogic/gdx/math/Vector3;

.field private final tempV3:Lcom/badlogic/gdx/math/Vector3;

.field private final tempV4:Lcom/badlogic/gdx/math/Vector3;

.field private final tempV5:Lcom/badlogic/gdx/math/Vector3;

.field private final tempV6:Lcom/badlogic/gdx/math/Vector3;

.field private final tempV7:Lcom/badlogic/gdx/math/Vector3;

.field private final tempV8:Lcom/badlogic/gdx/math/Vector3;

.field private final tmpNormal:Lcom/badlogic/gdx/math/Vector3;

.field private uOffset:F

.field private uScale:F

.field private uvOffset:I

.field private vOffset:F

.field private vScale:F

.field private final vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp5:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp6:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp7:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private final vertTmp8:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

.field private vertex:[F

.field private vertexTransformationEnabled:Z

.field private vertices:Lcom/badlogic/gdx/utils/FloatArray;

.field private vindex:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vectorPool:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vectorArray:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder$2;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder$2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matrices4Pool:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matrices4Array:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp5:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp6:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp7:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp8:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV3:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV4:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV5:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV6:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV7:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV8:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempC1:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpNormal:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method private addMesh([F[SII)V
    .locals 3

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    if-nez p3, :cond_0

    new-instance p3, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {p3, p4}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(I)V

    sput-object p3, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/utils/IntIntMap;->ensureCapacity(I)V

    :goto_0
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    array-length p3, p1

    if-ge p3, p4, :cond_1

    array-length p3, p1

    goto :goto_1

    :cond_1
    move p3, p4

    :goto_1
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p4, :cond_3

    aget-short v0, p2, p3

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int/2addr v1, v0

    invoke-direct {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indicesMap:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-short v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    move v1, v2

    :cond_2
    int-to-short v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(S)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private final addVertex([FI)V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/badlogic/gdx/utils/FloatArray;->addAll([FII)V

    iget-short p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:S

    add-int/lit8 p2, p1, 0x1

    int-to-short p2, p2

    iput-short p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:S

    iput-short p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    const/4 p2, 0x3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {p1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformPosition([FIILcom/badlogic/gdx/math/Matrix4;)V

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-static {p1, v1, p2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V

    :cond_0
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v1, v0

    aget v2, p1, v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v2, v3

    aput v2, p1, v1

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    aget v2, p1, v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v2, v3

    aput v2, p1, v1

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    aget v2, p1, v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v3

    aput v2, p1, v1

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colSize:I

    if-le p1, p2, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v1, v0

    add-int/2addr v1, p2

    aget p2, p1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr p2, v2

    aput p2, p1, v1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempC1:Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    add-int/2addr v3, v0

    aget v2, v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->set(I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    aput v1, p1, p2

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr p2, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr v4, v0

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, p2

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    aput v1, p1, p2

    :cond_3
    return-void
.end method

.method private cleanup()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vectorPool:Lcom/badlogic/gdx/utils/Pool;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vectorArray:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vectorArray:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matrices4Pool:Lcom/badlogic/gdx/utils/Pool;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matrices4Array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matrices4Array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public static createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 9

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const-wide/16 v1, 0x1

    and-long v3, p0, v1

    cmp-long v1, v3, v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v3, "a_position"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v3, 0x2

    and-long v5, p0, v3

    cmp-long v1, v5, v3

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-nez v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v5, "a_color"

    invoke-direct {v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    const-wide/16 v5, 0x4

    and-long v7, p0, v5

    cmp-long v1, v7, v5

    if-nez v1, :cond_2

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v5, "a_color"

    invoke-direct {v1, v4, v4, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_2
    const-wide/16 v4, 0x8

    and-long v6, p0, v4

    cmp-long v1, v6, v4

    if-nez v1, :cond_3

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v4, 0x8

    const-string v5, "a_normal"

    invoke-direct {v1, v4, v2, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_3
    const-wide/16 v1, 0x10

    and-long/2addr p0, v1

    cmp-long p0, p0, v1

    if-nez p0, :cond_4

    new-instance p0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 p1, 0x10

    const-string v1, "a_texCoord0"

    invoke-direct {p0, p1, v3, v1}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_4
    iget p0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array p0, p0, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 p1, 0x0

    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_5

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    aput-object v1, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    return-object p1
.end method

.method private endpart()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    :cond_0
    return-void
.end method

.method private tmp()Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matrices4Pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matrices4Array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v0
.end method

.method private tmp(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method private tmp(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vectorPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vectorArray:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object p1
.end method

.method private tmp(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method private static final transformNormal([FIILcom/badlogic/gdx/math/Matrix3;)V
    .locals 5

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v2, p0, v1

    add-int/lit8 v3, p1, 0x2

    aget v4, p0, v3

    invoke-virtual {p2, v0, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v1

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput p1, p0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v3, p0, v2

    invoke-virtual {p2, v1, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v2

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    invoke-virtual {p2, v1, v0, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    :goto_0
    return-void
.end method

.method private static final transformPosition([FIILcom/badlogic/gdx/math/Matrix4;)V
    .locals 5

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v2, p0, v1

    add-int/lit8 v3, p1, 0x2

    aget v4, p0, v3

    invoke-virtual {p2, v0, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v1

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput p1, p0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v3, p0, v2

    invoke-virtual {p2, v1, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput p1, p0, v2

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vTmp:Lcom/badlogic/gdx/math/Vector3;

    aget v1, p0, p1

    invoke-virtual {p2, v1, v0, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput p2, p0, p1

    :goto_0
    return-void
.end method


# virtual methods
.method public addMesh(Lcom/badlogic/gdx/graphics/Mesh;)V
    .locals 2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V

    return-void
.end method

.method public addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-gtz p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int/2addr v0, v1

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    iput v0, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget-object v0, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices([F)[F

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iput p3, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices(II[SI)V

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpVertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object p2, p2, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh([F[SII)V

    return-void

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Vertex attributes do not match"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMesh(Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;)V
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addMesh(Lcom/badlogic/gdx/graphics/Mesh;II)V

    return-void

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Primitive type doesn\'t match"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public arrow(FFFFFFFFI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p9

    invoke-direct/range {p0 .. p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct {v0, v6, v7, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->dst(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v7

    mul-float v8, v7, p7

    float-to-double v9, v8

    const-wide v11, 0x3fd5555560000000L    # 0.3333333432674408

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    double-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    sub-float/2addr v7, v8

    mul-float v11, v9, p8

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    sget-object v14, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/math/Vector3;->isZero()Z

    move-result v14

    if-eqz v14, :cond_0

    sget-object v14, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    invoke-virtual {v13, v12}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->getVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v15

    iget-object v10, v15, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v16, 0x0

    move/from16 p5, v8

    iget v8, v14, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v8, v10, v16

    const/4 v8, 0x4

    move/from16 p6, v9

    iget v9, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v9, v10, v8

    const/16 v8, 0x8

    iget v9, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v9, v10, v8

    const/4 v8, 0x1

    iget v9, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v9, v10, v8

    const/4 v8, 0x5

    iget v9, v12, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v9, v10, v8

    const/16 v8, 0x9

    iget v9, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v9, v10, v8

    const/4 v8, 0x2

    iget v9, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v9, v10, v8

    const/4 v8, 0x6

    iget v9, v12, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v9, v10, v8

    const/16 v8, 0xa

    iget v9, v13, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v9, v10, v8

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v8

    invoke-direct {v0, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v7, v10

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v15, v9}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v15}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {v0, v11, v7, v11, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cylinder(FFFI)V

    invoke-direct {v0, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v15}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    move/from16 v7, p5

    move/from16 v9, p6

    invoke-virtual {v0, v9, v7, v9, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cone(FFFI)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cleanup()V

    return-void
.end method

.method public begin(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    return-void
.end method

.method public begin(JI)V
    .locals 0

    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->createAttributes(J)Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V

    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/VertexAttributes;I)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:S

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->istart:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v2, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    const/4 v3, 0x4

    div-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    if-eqz v2, :cond_0

    array-length v2, v2

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    if-ge v2, v4, :cond_1

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    if-eqz v2, :cond_7

    iget v4, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v4, v3

    iput v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    const/4 v4, -0x1

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v2, v3

    :goto_0
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    if-nez v2, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    iget v5, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v5, v3

    :goto_1
    iput v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget v0, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    :goto_2
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colSize:I

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_3

    :cond_5
    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v0, v3

    :goto_3
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    iget p1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v4, p1, 0x4

    :goto_4
    iput v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    return-void

    :cond_7
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Cannot build mesh without position attribute"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Call end() first"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public box(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->box(Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method public box(FFFFFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p4, p5, p6}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->trn(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->box(Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method public box(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 11

    move-object v9, p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v1

    move-object v0, p3

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v7

    move-object v0, p4

    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v5

    move-object v0, p2

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v3

    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v8

    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v6

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v4

    iget v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v10, 0x1

    if-ne v0, v10, :cond_0

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    invoke-virtual {p0, v1, v7, v5, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    invoke-virtual {p0, v8, v2, v4, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSSSS)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangleIndices(I)V

    invoke-virtual {p0, v1, v7, v5, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    invoke-virtual {p0, v8, v2, v4, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangleIndices(I)V

    invoke-virtual {p0, v1, v7, v5, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    invoke-virtual {p0, v8, v2, v4, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    invoke-virtual {p0, v8, v6, v5, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    invoke-virtual {p0, v8, v7, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    invoke-virtual {p0, v5, v6, v4, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    :goto_0
    return-void
.end method

.method public box(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 11

    const/high16 v0, -0x41000000    # -0.5f

    invoke-direct {p0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-direct {p0, v1, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-direct {p0, v1, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-direct {p0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-direct {p0, v0, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-direct {p0, v1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-direct {p0, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmp(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->box(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cleanup()V

    return-void
.end method

.method public box(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    iget v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    if-gez v0, :cond_0

    iget v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    if-gez v0, :cond_0

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v2

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, v7, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, v8, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, v10, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp5:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, v11, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v6

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp6:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, v12, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v7

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp7:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, v13, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp8:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, v14, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v10

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->box(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangles(I)V

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-virtual {v0, v10, v15}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v16, v5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    const/high16 v5, -0x40800000    # -1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v13, v15}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    move-object/from16 v16, v5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    move-object/from16 v0, v16

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    move-object/from16 v4, p4

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v12, v15}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p8

    move-object/from16 v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    :goto_0
    return-void
.end method

.method public capsule(FFI)V
    .locals 15

    move-object v11, p0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v12, p1, v0

    cmpg-float v0, p2, v12

    if-ltz v0, :cond_0

    sub-float v13, p2, v12

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    move-object v0, p0

    move v1, v12

    move v2, v13

    move v3, v12

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cylinder(FFFIFFZ)V

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v13

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v1, v14}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    const/high16 v10, 0x42b40000    # 90.0f

    move-object v0, p0

    move v2, v12

    move v4, v12

    move/from16 v5, p3

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->sphere(Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    const/high16 v1, -0x41000000    # -0.5f

    mul-float/2addr v13, v1

    invoke-virtual {v0, v14, v13, v14}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v10, 0x43340000    # 180.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->sphere(Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Height must be at least twice the radius"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public circle(FIFFFFFF)V
    .locals 11

    const/4 v9, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFFFF)V

    return-void
.end method

.method public circle(FIFFFFFFFF)V
    .locals 13

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v3, p1, v0

    move-object v1, p0

    move v2, v3

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFIFFFFFFFF)V

    return-void
.end method

.method public circle(FIFFFFFFFFFFFF)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    const/4 v15, 0x0

    const/high16 v16, 0x43b40000    # 360.0f

    invoke-virtual/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public circle(FIFFFFFFFFFFFFFF)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p1, v1

    move v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 9

    iget v3, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v5, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v6, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v7, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v8, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFF)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 11

    move-object v0, p3

    move-object v1, p4

    iget v3, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v5, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v6, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v7, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v8, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFFFF)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 16

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v7, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v8, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v10, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v11, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v12, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v13, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v14, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v15, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    invoke-virtual/range {v0 .. v14}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFFFFFFFF)V

    return-void
.end method

.method public circle(FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 21

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v19, p7

    move/from16 v20, p8

    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v11, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v12, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v13, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v14, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v15, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v16, v0

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v17, v0

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v18, v0

    invoke-virtual/range {v4 .. v20}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->circle(FIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public cone(FFFI)V
    .locals 7

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cone(FFFIFF)V

    return-void
.end method

.method public cone(FFFIFF)V
    .locals 20

    move-object/from16 v5, p0

    move/from16 v2, p4

    add-int/lit8 v0, v2, 0x2

    invoke-virtual {v5, v0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangles(II)V

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, p1, v0

    mul-float v7, p2, v0

    mul-float v3, p3, v0

    const v4, 0x3c8efa35

    mul-float v6, p5, v4

    sub-float v8, p6, p5

    mul-float/2addr v8, v4

    int-to-float v4, v2

    div-float/2addr v8, v4

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v4, v9, v4

    iget-object v10, v5, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v11, v11, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v10

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    iput-boolean v12, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    iput-boolean v12, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v12, v11, v11, v11, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7, v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v11

    invoke-virtual {v11, v12, v9, v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v11

    invoke-virtual {v11, v0, v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v0

    const/4 v11, 0x0

    move v13, v11

    :goto_0
    if-gt v11, v2, :cond_1

    int-to-float v14, v11

    mul-float v15, v8, v14

    add-float/2addr v15, v6

    mul-float/2addr v14, v4

    sub-float v14, v9, v14

    iget-object v9, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v15}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v16

    mul-float v12, v16, v1

    invoke-static {v15}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v15

    mul-float/2addr v15, v3

    move/from16 v16, v1

    const/4 v1, 0x0

    invoke-virtual {v9, v12, v1, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget-object v12, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    neg-float v12, v7

    iput v12, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v9, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v9, v14, v12}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v9

    if-eqz v11, :cond_0

    invoke-virtual {v5, v0, v9, v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(SSS)V

    :cond_0
    add-int/lit8 v11, v11, 0x1

    move v13, v9

    move v9, v12

    move v12, v1

    move/from16 v1, v16

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    neg-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x0

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v0, 0x43340000    # 180.0f

    sub-float v18, v0, p6

    sub-float v19, v0, p5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public cylinder(FFFI)V
    .locals 7

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cylinder(FFFIFF)V

    return-void
.end method

.method public cylinder(FFFIFF)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cylinder(FFFIFFZ)V

    return-void
.end method

.method public cylinder(FFFIFFZ)V
    .locals 20

    move-object/from16 v7, p0

    move/from16 v5, p4

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, p1, v0

    mul-float v2, p2, v0

    mul-float v0, v0, p3

    const v3, 0x3c8efa35

    mul-float v4, p5, v3

    sub-float v6, p6, p5

    mul-float/2addr v6, v3

    int-to-float v3, v5

    div-float/2addr v6, v3

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v3, v8, v3

    iget-object v9, v7, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v10, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    iput-boolean v11, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    iput-boolean v11, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    iget-object v12, v7, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v12, v10, v10, v10, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v10

    iput-boolean v11, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    iput-boolean v11, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    iput-boolean v11, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    add-int/lit8 v11, v5, 0x1

    mul-int/lit8 v11, v11, 0x2

    invoke-virtual {v7, v11, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangles(II)V

    const/4 v11, 0x0

    move v12, v11

    move v13, v12

    :goto_0
    if-gt v11, v5, :cond_1

    int-to-float v14, v11

    mul-float v15, v6, v14

    add-float/2addr v15, v4

    mul-float/2addr v14, v3

    sub-float v14, v8, v14

    iget-object v8, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v15}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v16

    move/from16 v17, v3

    mul-float v3, v16, v1

    invoke-static {v15}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v15

    mul-float/2addr v15, v0

    move/from16 v16, v0

    const/4 v0, 0x0

    invoke-virtual {v8, v3, v0, v15}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    neg-float v8, v2

    iput v8, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v14, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v15, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v15}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget-object v15, v9, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v15}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    iput v2, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v14, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v0

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v3

    if-eqz v11, :cond_0

    invoke-virtual {v7, v12, v3, v0, v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    :cond_0
    add-int/lit8 v11, v11, 0x1

    move v13, v0

    move v12, v3

    move/from16 v0, v16

    move/from16 v3, v17

    goto :goto_0

    :cond_1
    if-eqz p7, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 p2, v2

    move/from16 v2, p3

    move/from16 v5, p4

    move/from16 v7, p2

    move/from16 v18, p5

    move/from16 v19, p6

    invoke-virtual/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFFFFFFFF)V

    move/from16 v0, p2

    neg-float v7, v0

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v0, 0x43340000    # 180.0f

    sub-float v18, v0, p6

    sub-float v19, v0, p5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFFFFFFFF)V

    :cond_2
    return-void
.end method

.method public ellipse(FFFFIFFFFFF)V
    .locals 14

    const/4 v12, 0x0

    const/high16 v13, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFFFIFFFFFFFF)V
    .locals 20

    move-object/from16 v11, p0

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v8, p11

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v9, v10, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v9, v10, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->crs(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    iget-object v1, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v9, v10, v8}, Lcom/badlogic/gdx/math/Vector3;->crs(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v16, v0

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v18, p12

    move/from16 v19, p13

    invoke-virtual/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFFFIFFFFFFFFFFFFFF)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p13

    move/from16 v10, p14

    move/from16 v11, p15

    move/from16 v12, p16

    move/from16 v13, p17

    const/4 v14, 0x0

    cmpg-float v15, p3, v14

    const/4 v5, 0x1

    if-lez v15, :cond_3

    cmpg-float v16, p4, v14

    if-gtz v16, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v16, p3, p1

    if-nez v16, :cond_2

    cmpl-float v16, p4, p2

    if-nez v16, :cond_2

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    iget v14, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-ne v14, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Incorrect primitive type : expect GL_LINES because innerWidth == width && innerHeight == height"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int/lit8 v14, v1, 0x1

    mul-int/lit8 v5, v14, 0x2

    invoke-virtual {v0, v5, v14}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangles(II)V

    goto :goto_1

    :cond_3
    :goto_0
    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v0, v5, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangles(II)V

    :goto_1
    const v5, 0x3c8efa35

    mul-float v14, p18, v5

    sub-float v18, p19, p18

    mul-float v18, v18, v5

    int-to-float v5, v1

    div-float v18, v18, v5

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v8, v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    move/from16 v19, v15

    const/high16 v15, 0x3f000000    # 0.5f

    move/from16 v20, v14

    mul-float v14, p1, v15

    invoke-virtual {v5, v14}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v14, v11, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move-object/from16 p18, v5

    mul-float v5, p2, v15

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v14, v8, v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    mul-float v9, p3, v15

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tempV4:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v11, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    mul-float v10, p4, v15

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v11, v11, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v10

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    iput-boolean v12, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    iput-boolean v12, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    iget-object v13, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v13, v15, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v13, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v13, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    move v14, v12

    move/from16 v12, p9

    invoke-virtual {v13, v12, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v13, v11, v11, v11, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v11

    iput-boolean v14, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    iput-boolean v14, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    iput-boolean v14, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    iget-object v13, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v13, v15, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v13, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v13, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v12, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v6

    div-float v7, p3, p1

    mul-float/2addr v7, v15

    div-float v12, p4, p2

    mul-float/2addr v12, v15

    const/4 v13, 0x0

    move v14, v13

    move/from16 v21, v14

    move/from16 v22, v21

    :goto_2
    if-gt v13, v1, :cond_a

    int-to-float v15, v13

    mul-float v15, v15, v18

    add-float v15, v20, v15

    invoke-static {v15}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v17

    invoke-static {v15}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v15

    iget-object v1, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    move/from16 p9, v6

    move/from16 p10, v12

    move-object/from16 v6, p18

    iget v12, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v12, v12, v17

    move/from16 p11, v7

    iget v7, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v7, v15

    add-float/2addr v12, v7

    iget v7, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v7, v7, v17

    move-object/from16 p12, v9

    iget v9, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v9, v15

    add-float/2addr v7, v9

    iget v9, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v9, v9, v17

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v6, v15

    add-float/2addr v9, v6

    invoke-virtual {v1, v12, v7, v9}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v7, v17, v6

    add-float/2addr v7, v6

    mul-float v9, v15, v6

    add-float/2addr v9, v6

    invoke-virtual {v1, v7, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v1

    if-lez v19, :cond_8

    const/4 v6, 0x0

    cmpg-float v7, p4, v6

    if-gtz v7, :cond_4

    goto :goto_3

    :cond_4
    cmpl-float v7, p3, p1

    if-nez v7, :cond_6

    cmpl-float v7, p4, p2

    if-nez v7, :cond_6

    if-eqz v13, :cond_5

    invoke-virtual {v0, v1, v14}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(SS)V

    :cond_5
    move/from16 v2, p9

    move-object/from16 v12, p12

    move/from16 v7, v21

    move/from16 v9, v22

    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_4

    :cond_6
    iget-object v7, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    iget v9, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v9, v9, v17

    move-object/from16 v12, p12

    iget v14, v12, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v14, v15

    add-float/2addr v9, v14

    iget v14, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v14, v14, v17

    iget v6, v12, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v6, v15

    add-float/2addr v14, v6

    iget v6, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v6, v6, v17

    iget v2, v12, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v15

    add-float/2addr v6, v2

    invoke-virtual {v7, v9, v14, v6}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    mul-float v7, p11, v17

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v7, v6

    mul-float v9, p10, v15

    add-float/2addr v9, v6

    invoke-virtual {v2, v7, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v2

    if-eqz v13, :cond_7

    move/from16 v7, v21

    move/from16 v9, v22

    invoke-virtual {v0, v2, v1, v9, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    :cond_7
    move/from16 v22, v1

    move/from16 v21, v2

    move/from16 v2, p9

    goto :goto_5

    :cond_8
    :goto_3
    move-object/from16 v12, p12

    move/from16 v7, v21

    move/from16 v9, v22

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v13, :cond_9

    move/from16 v2, p9

    invoke-virtual {v0, v1, v14, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(SSS)V

    goto :goto_4

    :cond_9
    move/from16 v2, p9

    :goto_4
    move/from16 v21, v7

    move/from16 v22, v9

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v7, p11

    move v14, v1

    move v15, v6

    move-object v9, v12

    move/from16 v1, p5

    move/from16 v12, p10

    move v6, v2

    move/from16 v2, p6

    goto/16 :goto_2

    :cond_a
    return-void
.end method

.method public ellipse(FFFFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 14

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    iget v6, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v9, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v11, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v12, 0x0

    const/high16 v13, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFIFFFFFF)V
    .locals 12

    const/4 v10, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFIFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFIFFFFFFFF)V
    .locals 14

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFIFFFFFFFFFFFF)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    const/16 v16, 0x0

    const/high16 v17, 0x43b40000    # 360.0f

    invoke-virtual/range {v0 .. v17}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFIFFFFFFFFFFFFFF)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 10

    iget v4, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v7, p5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v8, p5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, p5, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFIFFFFFF)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 14

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    iget v6, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v9, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v11, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v5, p3

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-virtual/range {v0 .. v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 16

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v7, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v8, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v10, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v11, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v12, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v13, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v14, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v15, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFIFFFFFFFFFFFF)V

    return-void
.end method

.method public ellipse(FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 24

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v9, p3

    move/from16 v22, p8

    move/from16 v23, p9

    iget v10, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v11, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v12, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v13, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v14, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v15, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v0, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v16, v0

    iget v0, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v17, v0

    iget v0, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v18, v0

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v19, v0

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v20, v0

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v21, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v23}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ellipse(FFFFIFFFFFFFFFFFFFF)V

    return-void
.end method

.method public end()Lcom/badlogic/gdx/graphics/Mesh;
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public end(Lcom/badlogic/gdx/graphics/Mesh;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 3

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->endpart()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxVertices()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxIndices()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([SII)Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput-object p1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    return-object p1

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mesh can\'t hold enough indices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxIndices()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mesh can\'t hold enough vertices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getMaxVertices()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " * "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Mesh attributes don\'t match"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Call begin() first"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ensureCapacity(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    return-void
.end method

.method public ensureIndices(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    return-void
.end method

.method public ensureRectangleIndices(I)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    if-nez v0, :cond_0

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    :goto_0
    return-void
.end method

.method public ensureRectangles(I)V
    .locals 1

    mul-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangles(II)V

    return-void
.end method

.method public ensureRectangles(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangleIndices(I)V

    return-void
.end method

.method public ensureTriangleIndices(I)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    mul-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Incorrect primtive type"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    :goto_1
    return-void
.end method

.method public ensureTriangles(I)V
    .locals 1

    mul-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangles(II)V

    return-void
.end method

.method public ensureTriangles(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureTriangleIndices(I)V

    return-void
.end method

.method public ensureVertices(I)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    mul-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getMeshPart()Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    return-object v0
.end method

.method public getNumIndices()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertices:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public index(S)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SS)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSS)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSSS)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSSSSS)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public index(SSSSSSSS)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureIndices(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p7}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->indices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {p1, p8}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    return-void
.end method

.method public isVertexTransformationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    return v0
.end method

.method public lastIndex()S
    .locals 1

    iget-short v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    return v0
.end method

.method public line(FFFFFF)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p2, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p2, p4, p5, p6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(SS)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p2, p3, v1, p4, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p2, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->line(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public line(SS)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SS)V

    return-void

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Incorrect primitive type"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public part(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    move-result-object p1

    return-object p1
.end method

.method public part(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/model/MeshPart;)Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->attributes:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->endpart()V

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput-object p1, p3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    iput p2, p3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->part:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Call begin() first"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public patch(FFFFFFFFFFFFFFFII)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    move/from16 v2, p14

    move/from16 v3, p15

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    move v6, p1

    move v7, p2

    move/from16 v8, p3

    invoke-virtual {v4, p1, p2, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual {v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    invoke-virtual {v8, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    invoke-virtual {v8, v6, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v6

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-virtual {v5, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {v1, v7, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    move-object p1, p0

    move-object p2, v4

    move-object/from16 p3, v8

    move-object/from16 p4, v6

    move-object/from16 p5, v1

    move/from16 p6, p16

    move/from16 p7, p17

    invoke-virtual/range {p1 .. p7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->patch(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;II)V

    return-void
.end method

.method public patch(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;II)V
    .locals 8

    const/4 v0, 0x1

    if-lt p5, v0, :cond_3

    if-lt p6, v0, :cond_3

    add-int/lit8 v1, p6, 0x1

    add-int/lit8 v2, p5, 0x1

    mul-int/2addr v1, v2

    mul-int v2, p6, p5

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangles(II)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-gt v2, p5, :cond_2

    int-to-float v3, v2

    int-to-float v4, p5

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp5:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->lerp(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;F)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp6:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v4, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    invoke-virtual {v4, p3, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->lerp(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;F)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move v3, v1

    :goto_1
    if-gt v3, p6, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp7:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp5:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp6:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    int-to-float v6, v3

    int-to-float v7, p6

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->lerp(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;F)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v4

    if-lez v2, :cond_0

    if-lez v3, :cond_0

    sub-int v5, v4, p6

    add-int/lit8 v6, v5, -0x2

    int-to-short v6, v6

    add-int/lit8 v7, v4, -0x1

    int-to-short v7, v7

    sub-int/2addr v5, v0

    int-to-short v5, v5

    invoke-virtual {p0, v6, v7, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "divisionsU and divisionV must be > 0, u,v: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public patch(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;II)V
    .locals 9

    move-object v7, p0

    move-object v0, p5

    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v2, 0x0

    move-object v3, p1

    invoke-virtual {v1, p1, p5, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    iget-object v5, v7, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-object v6, p2

    invoke-virtual {v5, p2, p5, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    invoke-virtual {v5, v3, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    iget-object v6, v7, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-object v8, p3

    invoke-virtual {v6, p3, p5, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v3

    iget-object v6, v7, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-object v8, p4

    invoke-virtual {v6, p4, p5, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    move-object v0, p0

    move-object v2, v5

    move v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->patch(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;II)V

    return-void
.end method

.method public rect(FFFFFFFFFFFFFFF)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    move/from16 v2, p14

    move/from16 v3, p15

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    move v6, p1

    move v7, p2

    move/from16 v8, p3

    invoke-virtual {v4, p1, p2, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v4

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v8, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual {v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    invoke-virtual {v8, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    invoke-virtual {v8, v6, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v8

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v9, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v6

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v9, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-virtual {v5, v9, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {v1, v7, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v1

    invoke-virtual {p0, v4, v8, v6, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p2

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p3

    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    return-void
.end method

.method public rect(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v3, p2, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v3, p3, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    invoke-virtual {p3, v0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p4, p5, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p4

    invoke-virtual {p4, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public rect(SSSS)V
    .locals 9

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v5, p4

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSS)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p3

    move v6, p4

    move v7, p4

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSSSS)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSS)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Incorrect primitive type"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColor(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->color:Lcom/badlogic/gdx/graphics/Color;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasColor:Z

    if-nez v1, :cond_1

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :cond_1
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setUVRange(FFFF)V
    .locals 1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    sub-float v0, p3, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    sub-float v0, p4, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p3, p1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p4, p1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    return-void
.end method

.method public setUVRange(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->hasUVTransform:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vOffset:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uOffset:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vScale:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uScale:F

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->setUVRange(FFFF)V

    :goto_1
    return-void
.end method

.method public setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix3;->inv()Lcom/badlogic/gdx/math/Matrix3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix3;->transpose()Lcom/badlogic/gdx/math/Matrix3;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->positionTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    :goto_1
    return-void
.end method

.method public setVertexTransformationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertexTransformationEnabled:Z

    return-void
.end method

.method public sphere(FFFII)V
    .locals 10

    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    const/high16 v9, 0x43340000    # 180.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->sphere(FFFIIFFFF)V

    return-void
.end method

.method public sphere(FFFIIFFFF)V
    .locals 12

    move-object v11, p0

    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->sphere(Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    return-void
.end method

.method public sphere(Lcom/badlogic/gdx/math/Matrix4;FFFII)V
    .locals 11

    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    const/high16 v10, 0x43340000    # 180.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->sphere(Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    return-void
.end method

.method public sphere(Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v4, p2, v3

    mul-float v5, p3, v3

    mul-float v3, v3, p4

    const v6, 0x3c8efa35

    mul-float v7, p7, v6

    sub-float v8, p8, p7

    mul-float/2addr v8, v6

    int-to-float v9, v1

    div-float/2addr v8, v9

    mul-float v10, p9, v6

    sub-float v11, p10, p9

    mul-float/2addr v11, v6

    int-to-float v6, v2

    div-float/2addr v11, v6

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v9, v12, v9

    div-float v6, v12, v6

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v14, v14, v14}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v13

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    iput-boolean v14, v13, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    iput-boolean v14, v13, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    add-int/lit8 v14, v1, 0x3

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    mul-int/lit8 v12, v1, 0x2

    invoke-virtual {v15, v12}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iput v14, v12, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v12, v2, 0x1

    add-int/lit8 v15, v1, 0x1

    mul-int/2addr v12, v15

    move/from16 p3, v15

    mul-int v15, v2, v1

    invoke-virtual {v0, v12, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureRectangles(II)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-gt v15, v2, :cond_2

    int-to-float v12, v15

    mul-float v17, v11, v12

    add-float v17, v10, v17

    mul-float/2addr v12, v6

    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v18

    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v17

    mul-float v2, v17, v5

    move/from16 v17, v5

    move/from16 p7, v6

    move/from16 v6, v16

    const/4 v5, 0x0

    :goto_1
    if-gt v5, v1, :cond_1

    move/from16 p8, v10

    int-to-float v10, v5

    mul-float v16, v8, v10

    add-float v16, v7, v16

    mul-float/2addr v10, v9

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v10, v19, v10

    move/from16 p2, v7

    iget-object v7, v13, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-static/range {v16 .. v16}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v20

    mul-float v20, v20, v4

    move/from16 v21, v4

    mul-float v4, v20, v18

    invoke-static/range {v16 .. v16}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v16

    mul-float v16, v16, v3

    move/from16 v20, v3

    mul-float v3, v16, v18

    invoke-virtual {v7, v4, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, v13, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget-object v7, v13, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, v13, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v10, v12}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v7

    invoke-virtual {v3, v6, v7}, Lcom/badlogic/gdx/utils/ShortArray;->set(IS)V

    add-int v3, v6, v14

    if-lez v15, :cond_0

    if-lez v5, :cond_0

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v7

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    add-int/lit8 v16, v3, -0x1

    move/from16 p9, v2

    rem-int v2, v16, v14

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v2

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    add-int/lit8 v16, v1, 0x2

    sub-int v16, v3, v16

    rem-int v1, v16, v14

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v1

    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    sub-int v3, v3, p3

    rem-int/2addr v3, v14

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v3

    invoke-virtual {v0, v7, v2, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->rect(SSSS)V

    goto :goto_2

    :cond_0
    move/from16 p9, v2

    :goto_2
    add-int/lit8 v6, v6, 0x1

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    rem-int/2addr v6, v1

    add-int/lit8 v5, v5, 0x1

    move/from16 v7, p2

    move/from16 v10, p8

    move/from16 v2, p9

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v1, p5

    goto/16 :goto_1

    :cond_1
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 p2, v7

    move/from16 p8, v10

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v4, p1

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v6

    move/from16 v5, v17

    move/from16 v4, v21

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v6, p7

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->ensureVertices(I)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p2

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(SSS)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p2, p3, v1, p4, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {p3, p5, v1, p6, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public triangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp1:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp2:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p2, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v0, p3, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->triangle(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)V

    return-void
.end method

.method public triangle(SSS)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->primitiveType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSSSSS)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Incorrect primitive type"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->index(SSS)V

    :goto_1
    return-void
.end method

.method public vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S
    .locals 5

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-boolean v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iget-boolean v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasColor:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->color:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    iget-boolean v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    if-eqz v4, :cond_3

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    :cond_3
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)S

    move-result p1

    return p1
.end method

.method public vertex(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)S
    .locals 5

    iget-short v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vindex:S

    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_9

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, v0, v1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v3, v0, v2

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posSize:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->posOffset:I

    add-int/2addr v3, v2

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v4, v0, v3

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    if-ltz v0, :cond_3

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->tmpNormal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    :cond_2
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    iget v3, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v3, p1, v0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    add-int/2addr v0, v1

    iget v3, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v3, p1, v0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->norOffset:I

    add-int/2addr v0, v2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput p2, p1, v0

    :cond_3
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    if-ltz p1, :cond_5

    if-nez p3, :cond_4

    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :cond_4
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    iget v0, p3, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v0, p1, p2

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr p2, v1

    iget v0, p3, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v0, p1, p2

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr p2, v2

    iget v0, p3, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v0, p1, p2

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colSize:I

    const/4 p2, 0x3

    if-le p1, p2, :cond_7

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->colOffset:I

    add-int/2addr v0, p2

    iget p2, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    aput p2, p1, v0

    goto :goto_0

    :cond_5
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    if-lez p1, :cond_7

    if-nez p3, :cond_6

    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :cond_6
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->cpOffset:I

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p3

    aput p3, p1, p2

    :cond_7
    :goto_0
    if-eqz p4, :cond_8

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    if-ltz p1, :cond_8

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p3, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput p3, p2, p1

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->uvOffset:I

    add-int/2addr p2, v1

    iget p3, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput p3, p1, p2

    :cond_8
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->vertex:[F

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    iget-short p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    return p1

    :cond_9
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Too many vertices used"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs vertex([F)S
    .locals 3

    array-length v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->addVertex([FI)V

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->stride:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-short p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshBuilder;->lastIndex:S

    return p1
.end method
