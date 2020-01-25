.class Lorg/lasque/tusdk/core/seles/output/SelesSmartView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setBackgroundColor(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/output/SelesSmartView;FFFF)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView$2;->e:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    iput p2, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView$2;->a:F

    iput p3, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView$2;->b:F

    iput p4, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView$2;->c:F

    iput p5, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView$2;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [F

    iget v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView$2;->a:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView$2;->b:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView$2;->c:F

    const/4 v3, 0x2

    aput v1, v0, v3

    iget v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView$2;->d:F

    const/4 v3, 0x3

    aput v1, v0, v3

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView$2;->e:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    iget-object v1, v1, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView$2;->e:Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->a(Lorg/lasque/tusdk/core/seles/output/SelesSmartView;)I

    move-result v1

    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method
