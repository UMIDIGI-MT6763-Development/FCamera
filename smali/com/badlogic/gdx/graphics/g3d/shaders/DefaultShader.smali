.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
.source "DefaultShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;,
        Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;,
        Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;
    }
.end annotation


# static fields
.field public static defaultCullFace:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static defaultDepthFunc:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static defaultFragmentShader:Ljava/lang/String;

.field private static defaultVertexShader:Ljava/lang/String;

.field protected static implementedFlags:J

.field private static final optionalAttributes:J

.field private static final tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;


# instance fields
.field protected final ambientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

.field protected final attributesMask:J

.field private camera:Lcom/badlogic/gdx/graphics/Camera;

.field protected final config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

.field protected dirLightsColorOffset:I

.field protected dirLightsDirectionOffset:I

.field protected dirLightsLoc:I

.field protected dirLightsSize:I

.field protected final directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

.field protected final environmentCubemap:Z

.field protected final lighting:Z

.field private lightsSet:Z

.field private normalMatrix:Lcom/badlogic/gdx/math/Matrix3;

.field protected final pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

.field protected pointLightsColorOffset:I

.field protected pointLightsIntensityOffset:I

.field protected pointLightsLoc:I

.field protected pointLightsPositionOffset:I

.field protected pointLightsSize:I

.field private renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

.field protected final shadowMap:Z

.field private time:F

.field private final tmpV1:Lcom/badlogic/gdx/math/Vector3;

.field public final u_alphaTest:I

.field protected final u_ambientCubemap:I

.field public final u_ambientTexture:I

.field public final u_ambientUVTransform:I

.field public final u_bones:I

.field public final u_cameraDirection:I

.field public final u_cameraPosition:I

.field public final u_cameraUp:I

.field public final u_diffuseColor:I

.field public final u_diffuseTexture:I

.field public final u_diffuseUVTransform:I

.field protected final u_dirLights0color:I

.field protected final u_dirLights0direction:I

.field protected final u_dirLights1color:I

.field public final u_emissiveColor:I

.field public final u_emissiveTexture:I

.field public final u_emissiveUVTransform:I

.field protected final u_environmentCubemap:I

.field protected final u_fogColor:I

.field public final u_normalMatrix:I

.field public final u_normalTexture:I

.field public final u_normalUVTransform:I

.field public final u_opacity:I

.field protected final u_pointLights0color:I

.field protected final u_pointLights0intensity:I

.field protected final u_pointLights0position:I

.field protected final u_pointLights1color:I

.field public final u_projTrans:I

.field public final u_projViewTrans:I

.field public final u_projViewWorldTrans:I

.field public final u_reflectionColor:I

.field public final u_reflectionTexture:I

.field public final u_reflectionUVTransform:I

.field protected final u_shadowMapProjViewTrans:I

.field protected final u_shadowPCFOffset:I

.field protected final u_shadowTexture:I

.field public final u_shininess:I

.field public final u_specularColor:I

.field public final u_specularTexture:I

.field public final u_specularUVTransform:I

.field public final u_time:I

.field public final u_viewTrans:I

.field public final u_viewWorldTrans:I

.field public final u_worldTrans:I

.field private vertexMask:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->implementedFlags:J

    const/16 v0, 0x405

    sput v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultCullFace:I

    const/16 v0, 0x203

    sput v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultDepthFunc:I

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->optionalAttributes:J

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 5

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_dirLights[0].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights0color:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_dirLights[0].direction"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights0direction:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_dirLights[1].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights1color:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_pointLights[0].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0color:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_pointLights[0].position"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0position:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_pointLights[0].intensity"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0intensity:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_pointLights[1].color"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights1color:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_fogColor"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_fogColor:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_shadowMapProjViewTrans"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowMapProjViewTrans:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_shadowTexture"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowTexture:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v1, "u_shadowPCFOffset"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowPCFOffset:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->ambientCubemap:Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->normalMatrix:Lcom/badlogic/gdx/math/Matrix3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    move-result-object v0

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object p3, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result p3

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz p3, :cond_1

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move p3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move p3, v1

    :goto_2
    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->environmentCubemap:Z

    iget-boolean p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz p3, :cond_3

    iget-object p3, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object p3, p3, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->shadowMap:Z

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->getMask()J

    move-result-wide v0

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->optionalAttributes:J

    or-long/2addr v0, v3

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->attributesMask:J

    iget-object p3, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->vertexMask:J

    iget-boolean p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz p3, :cond_4

    iget p3, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    if-lez p3, :cond_4

    iget p3, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    goto :goto_4

    :cond_4
    move p3, v2

    :goto_4
    new-array p3, p3, [Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    move p3, v2

    :goto_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    array-length v1, v0

    if-ge p3, v1, :cond_5

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;-><init>()V

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_5
    iget-boolean p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz p3, :cond_6

    iget p3, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    if-lez p3, :cond_6

    iget p3, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    goto :goto_6

    :cond_6
    move p3, v2

    :goto_6
    new-array p3, p3, [Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    :goto_7
    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    array-length v0, p3

    if-ge v2, v0, :cond_7

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;-><init>()V

    aput-object v0, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    iget-boolean p3, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->ignoreUnimplemented:Z

    if-nez p3, :cond_9

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->implementedFlags:J

    iget-wide v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->attributesMask:J

    and-long/2addr v0, v2

    cmp-long p3, v0, v2

    if-nez p3, :cond_8

    goto :goto_8

    :cond_8
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Some attributes not implemented yet ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->attributesMask:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_8
    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->projTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_projTrans:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->viewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->viewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_viewTrans:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->projViewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projViewTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_projViewTrans:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraPosition:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraPosition:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_cameraPosition:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraDirection:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_cameraDirection:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->cameraUp:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->cameraUp:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_cameraUp:I

    new-instance p3, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    const-string v0, "u_time"

    invoke-direct {p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_time:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->worldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->worldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_worldTrans:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->viewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->viewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_viewWorldTrans:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->projViewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->projViewWorldTrans:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_projViewWorldTrans:I

    sget-object p3, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->normalMatrix:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->normalMatrix:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_normalMatrix:I

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    const/4 p3, -0x1

    if-eqz p1, :cond_a

    iget p1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    if-lez p1, :cond_a

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->bones:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;

    iget v1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    goto :goto_9

    :cond_a
    move p1, p3

    :goto_9
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_bones:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->shininess:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->shininess:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shininess:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->opacity:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_opacity:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->diffuseColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_diffuseColor:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->diffuseTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_diffuseTexture:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->diffuseUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->diffuseUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_diffuseUVTransform:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->specularColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->specularColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_specularColor:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->specularTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->specularTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_specularTexture:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->specularUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->specularUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_specularUVTransform:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->emissiveColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->emissiveColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_emissiveColor:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->emissiveTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->emissiveTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_emissiveTexture:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->emissiveUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->emissiveUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_emissiveUVTransform:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->reflectionColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->reflectionColor:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_reflectionColor:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->reflectionTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->reflectionTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_reflectionTexture:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->reflectionUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->reflectionUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_reflectionUVTransform:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->normalTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->normalTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_normalTexture:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->normalUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->normalUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_normalUVTransform:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->ambientTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->ambientTexture:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_ambientTexture:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->ambientUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->ambientUVTransform:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_ambientUVTransform:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->alphaTest:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_alphaTest:I

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz p1, :cond_b

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->ambientCube:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;

    iget v1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    iget p2, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    invoke-direct {v0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$ACubemap;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p1

    goto :goto_a

    :cond_b
    move p1, p3

    :goto_a
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_ambientCubemap:I

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->environmentCubemap:Z

    if-eqz p1, :cond_c

    sget-object p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Inputs;->environmentCubemap:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;->environmentCubemap:Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->register(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Setter;)I

    move-result p3

    :cond_c
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_environmentCubemap:I

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->vertexShader:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->vertexShader:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->getDefaultVertexShader()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->fragmentShader:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->fragmentShader:Ljava/lang/String;

    move-object v6, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->getDefaultFragmentShader()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p4, p3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method

.method private static final and(JJ)Z
    .locals 0

    and-long/2addr p0, p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Ljava/lang/Iterable;)V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Ljava/lang/Iterable;)V

    :cond_1
    sget-object p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    return-object p0
.end method

.method public static createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)Ljava/lang/String;
    .locals 9

    invoke-static {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->getMask()J

    move-result-wide v2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define positionFlag\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-wide/16 v6, 0x6

    invoke-static {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->or(JJ)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define colorFlag\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-wide/16 v6, 0x100

    invoke-static {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define binormalFlag\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-wide/16 v6, 0x80

    invoke-static {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define tangentFlag\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-wide/16 v6, 0x8

    invoke-static {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define normalFlag\n"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-static {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v6

    if-nez v6, :cond_5

    const-wide/16 v6, 0x180

    invoke-static {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->and(JJ)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_5
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define lightingFlag\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define ambientCubemapFlag\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define numDirectionalLights "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numDirectionalLights:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define numPointLights "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numPointLights:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define fogFlag\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define shadowMapFlag\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define environmentCubemapFlag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_b

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v5

    iget v6, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/16 v7, 0x40

    if-ne v6, v7, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define boneWeight"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Flag\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    iget v6, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define texCoord"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Flag\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    and-long/2addr v4, v2

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define blendedFlag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    and-long/2addr v4, v2

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define diffuseTextureFlag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#define diffuseTextureCoord texCoord0\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_d
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    and-long/2addr v4, v2

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define specularTextureFlag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#define specularTextureCoord texCoord0\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_e
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    and-long/2addr v4, v2

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define normalTextureFlag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#define normalTextureCoord texCoord0\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_f
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    and-long/2addr v4, v2

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define emissiveTextureFlag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#define emissiveTextureCoord texCoord0\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_10
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    and-long/2addr v4, v2

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define reflectionTextureFlag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#define reflectionTextureCoord texCoord0\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_11
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    and-long/2addr v4, v2

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define ambientTextureFlag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#define ambientTextureCoord texCoord0\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_12
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    and-long/2addr v4, v2

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define diffuseColorFlag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_13
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    and-long/2addr v4, v2

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define specularColorFlag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_14
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    and-long/2addr v4, v2

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define emissiveColorFlag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_15
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    and-long/2addr v4, v2

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define reflectionColorFlag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_16
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    and-long/2addr v4, v2

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define shininessFlag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_17
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    and-long/2addr v2, v4

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#define alphaTestFlag\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_18
    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz p0, :cond_19

    iget p0, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    if-lez p0, :cond_19

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#define numBones "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_19
    return-object v1
.end method

.method public static getDefaultFragmentShader()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultFragmentShader:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/shaders/default.fragment.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultFragmentShader:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultFragmentShader:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultVertexShader()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultVertexShader:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/shaders/default.vertex.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultVertexShader:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultVertexShader:Ljava/lang/String;

    return-object v0
.end method

.method private static final or(JJ)Z
    .locals 0

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V
    .locals 10

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->set(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    array-length p2, p1

    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->set(FFFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_time:I

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->has(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_time:I

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->time:F

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    add-float/2addr p2, v0

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->time:F

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(IF)Z

    :cond_2
    return-void
.end method

.method protected bindLights(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 12

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->Type:J

    invoke-virtual {p2, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(Ljava/lang/Class;J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DirectionalLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    :goto_0
    const-class v2, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->Type:J

    invoke-virtual {p2, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(Ljava/lang/Class;J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v2, Lcom/badlogic/gdx/graphics/g3d/attributes/PointLightsAttribute;->lights:Lcom/badlogic/gdx/utils/Array;

    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ltz v2, :cond_7

    move v2, v4

    :goto_2
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    array-length v6, v6

    if-ge v2, v6, :cond_7

    if-eqz v0, :cond_4

    iget v6, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v2, v6, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v6, v6, v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->equals(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v6, v6, v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->set(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    goto :goto_4

    :cond_4
    :goto_3
    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v6, v6, v5

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v6, v6, v5

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v6, v6, v5

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v5, v5, v5, v3}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    :goto_4
    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsSize:I

    mul-int/2addr v7, v2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsColorOffset:I

    add-int/2addr v8, v6

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v11, v11, v2

    iget-object v11, v11, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsDirectionOffset:I

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->directionalLights:[Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v7, v6, v8, v9, v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsSize:I

    if-gtz v6, :cond_6

    goto :goto_6

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_7
    :goto_6
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    if-ltz v0, :cond_e

    :goto_7
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    array-length v0, v0

    if-ge v4, v0, :cond_e

    if-eqz v1, :cond_a

    iget v0, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v4, v0, :cond_8

    goto :goto_8

    :cond_8
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v0, v0, v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->equals(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_a

    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v0, v0, v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->set(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    goto :goto_9

    :cond_a
    :goto_8
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_b

    goto :goto_a

    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v0, v0, v4

    iput v5, v0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    :goto_9
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsSize:I

    mul-int/2addr v2, v4

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsColorOffset:I

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v9, v9, v4

    iget v9, v9, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v10, v10, v4

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    mul-float/2addr v9, v10

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsPositionOffset:I

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IFFF)V

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsIntensityOffset:I

    if-ltz v2, :cond_c

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsIntensityOffset:I

    add-int/2addr v0, v6

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLights:[Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    invoke-virtual {v2, v0, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(IF)V

    :cond_c
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsSize:I

    if-gtz v0, :cond_d

    goto :goto_b

    :cond_d
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_e
    :goto_b
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_fogColor:I

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    iget-object p2, p2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(ILcom/badlogic/gdx/graphics/Color;)Z

    :cond_f
    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    if-eqz p2, :cond_10

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowMapProjViewTrans:I

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;->getProjViewTrans()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(ILcom/badlogic/gdx/math/Matrix4;)Z

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowTexture:I

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;->getDepthMap()Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(ILcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)Z

    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_shadowPCFOffset:I

    const/high16 v0, 0x40000000    # 2.0f

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Environment;->shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;->getDepthMap()Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    move-result-object p1

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/GLTexture;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    div-float/2addr v3, p1

    invoke-virtual {p0, p2, v3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(IF)Z

    :cond_10
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lightsSet:Z

    return-void
.end method

.method protected bindMaterial(Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 13

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultCullFace:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    if-ne v2, v1, :cond_1

    sget v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultDepthFunc:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    :goto_1
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x1

    move v5, v4

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-wide v7, v6, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    invoke-static {v7, v8}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->is(J)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    iget v8, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->sourceFunction:I

    iget v9, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->destFunction:I

    invoke-virtual {v7, v4, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setBlending(ZII)V

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_opacity:I

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    invoke-virtual {p0, v7, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(IF)Z

    goto :goto_2

    :cond_2
    sget-wide v9, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    and-long/2addr v9, v7

    sget-wide v11, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;

    iget v0, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    goto :goto_2

    :cond_3
    sget-wide v9, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    and-long/2addr v9, v7

    sget-wide v11, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_4

    iget v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_alphaTest:I

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    invoke-virtual {p0, v7, v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->set(IF)Z

    goto :goto_2

    :cond_4
    sget-wide v9, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    and-long/2addr v7, v9

    sget-wide v9, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    iget v1, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthFunc:I

    iget v2, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeNear:F

    iget v3, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeFar:F

    iget-boolean v5, v6, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthMask:Z

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget-boolean v7, v7, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->ignoreUnimplemented:Z

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown material attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setCullFace(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {p1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setDepthTest(IFF)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setDepthMask(Z)V

    return-void
.end method

.method public canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z
    .locals 7

    invoke-static {p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    move-result-object v0

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->attributesMask:J

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->getMask()J

    move-result-wide v3

    sget-wide v5, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->optionalAttributes:J

    or-long/2addr v3, v5

    cmp-long v0, v1, v3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->vertexMask:J

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getMask()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public compareTo(Lcom/badlogic/gdx/graphics/g3d/Shader;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->dispose()V

    return-void
.end method

.method public end()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->end()V

    return-void
.end method

.method public equals(Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->equals(Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDefaultCullFace()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultCullFace:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    :goto_0
    return v0
.end method

.method public getDefaultDepthFunc()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->defaultDepthFunc:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    :goto_0
    return v0
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->init(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/badlogic/gdx/graphics/g3d/Renderable;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights0color:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights0color:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsColorOffset:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights0direction:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsDirectionOffset:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_dirLights1color:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsLoc:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsSize:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsSize:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->dirLightsSize:I

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0color:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0color:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsColorOffset:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0position:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsPositionOffset:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0intensity:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights0intensity:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsIntensityOffset:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->u_pointLights1color:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->loc(I)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsLoc:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsSize:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsSize:I

    if-gez v0, :cond_2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->pointLightsSize:I

    :cond_2
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 4

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->context:Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;

    const/4 v1, 0x0

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;->setBlending(ZII)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->bindMaterial(Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->lighting:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->bindLights(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    return-void
.end method

.method public setDefaultCullFace(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultCullFace:I

    return-void
.end method

.method public setDefaultDepthFunc(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->defaultDepthFunc:I

    return-void
.end method
