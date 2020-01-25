.class Lorg/lasque/tusdk/core/seles/filters/SelesFilter$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setMatrix3f([FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

.field final synthetic b:I

.field final synthetic c:[F

.field final synthetic d:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;I[F)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$9;->d:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$9;->a:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    iput p3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$9;->b:I

    iput-object p4, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$9;->c:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$9;->a:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$9;->b:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$9;->c:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    return-void
.end method
