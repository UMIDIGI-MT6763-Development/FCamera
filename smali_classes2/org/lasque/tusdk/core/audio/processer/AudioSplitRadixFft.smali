.class Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I[DII[D)V
    .locals 8

    shr-int/lit8 v6, p1, 0x2

    mul-int/lit8 v7, v6, 0x2

    sub-int v5, p4, v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DI[DI)V

    const/16 v0, 0x200

    if-le p1, v0, :cond_0

    move-object v0, p0

    move v1, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DII[D)V

    add-int v3, p3, v6

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b(I[DII[D)V

    add-int v3, p3, v7

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DII[D)V

    mul-int/lit8 p1, v6, 0x3

    add-int v3, p3, p1

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DII[D)V

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->c(I[DII[D)V

    :goto_0
    return-void
.end method

.method private final a(I[DI[DI)V
    .locals 40

    shr-int/lit8 v0, p1, 0x3

    mul-int/lit8 v1, v0, 0x2

    add-int v2, v1, v1

    add-int v3, v2, v1

    add-int/lit8 v4, p3, 0x0

    aget-wide v5, p2, v4

    add-int v2, p3, v2

    aget-wide v7, p2, v2

    add-double/2addr v5, v7

    add-int/lit8 v7, p3, 0x1

    aget-wide v8, p2, v7

    add-int/lit8 v10, v2, 0x1

    aget-wide v11, p2, v10

    add-double/2addr v8, v11

    aget-wide v11, p2, v4

    aget-wide v13, p2, v2

    sub-double/2addr v11, v13

    aget-wide v13, p2, v7

    aget-wide v15, p2, v10

    sub-double/2addr v13, v15

    add-int v15, p3, v1

    aget-wide v16, p2, v15

    add-int v3, p3, v3

    aget-wide v18, p2, v3

    add-double v16, v16, v18

    add-int/lit8 v18, v15, 0x1

    aget-wide v19, p2, v18

    add-int/lit8 v21, v3, 0x1

    aget-wide v22, p2, v21

    add-double v19, v19, v22

    aget-wide v22, p2, v15

    aget-wide v24, p2, v3

    sub-double v22, v22, v24

    aget-wide v24, p2, v18

    aget-wide v26, p2, v21

    sub-double v24, v24, v26

    add-double v26, v5, v16

    aput-wide v26, p2, v4

    add-double v26, v8, v19

    aput-wide v26, p2, v7

    sub-double v5, v5, v16

    aput-wide v5, p2, v15

    sub-double v8, v8, v19

    aput-wide v8, p2, v18

    sub-double v4, v11, v24

    aput-wide v4, p2, v2

    add-double v4, v13, v22

    aput-wide v4, p2, v10

    add-double v11, v11, v24

    aput-wide v11, p2, v3

    sub-double v13, v13, v22

    aput-wide v13, p2, v21

    add-int/lit8 v2, p5, 0x1

    aget-wide v2, p4, v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    :goto_0
    if-ge v5, v0, :cond_0

    add-int/lit8 v4, v4, 0x4

    add-int v6, p5, v4

    aget-wide v7, p4, v6

    add-int/lit8 v9, v6, 0x1

    aget-wide v9, p4, v9

    add-int/lit8 v11, v6, 0x2

    aget-wide v11, p4, v11

    add-int/lit8 v6, v6, 0x3

    aget-wide v13, p4, v6

    neg-double v13, v13

    add-int v6, v5, v1

    add-int v15, v6, v1

    add-int v16, v15, v1

    add-int v17, p3, v5

    aget-wide v18, p2, v17

    add-int v15, p3, v15

    aget-wide v20, p2, v15

    add-double v18, v18, v20

    add-int/lit8 v20, v17, 0x1

    aget-wide v21, p2, v20

    add-int/lit8 v23, v15, 0x1

    aget-wide v24, p2, v23

    add-double v21, v21, v24

    aget-wide v24, p2, v17

    aget-wide v26, p2, v15

    sub-double v24, v24, v26

    aget-wide v26, p2, v20

    aget-wide v28, p2, v23

    sub-double v26, v26, v28

    add-int v6, p3, v6

    aget-wide v28, p2, v6

    add-int v16, p3, v16

    aget-wide v30, p2, v16

    add-double v28, v28, v30

    add-int/lit8 v30, v6, 0x1

    aget-wide v31, p2, v30

    add-int/lit8 v33, v16, 0x1

    aget-wide v34, p2, v33

    add-double v31, v31, v34

    aget-wide v34, p2, v6

    aget-wide v36, p2, v16

    sub-double v34, v34, v36

    aget-wide v36, p2, v30

    aget-wide v38, p2, v33

    sub-double v36, v36, v38

    add-double v38, v18, v28

    aput-wide v38, p2, v17

    add-double v38, v21, v31

    aput-wide v38, p2, v20

    sub-double v18, v18, v28

    aput-wide v18, p2, v6

    sub-double v21, v21, v31

    aput-wide v21, p2, v30

    sub-double v17, v24, v36

    add-double v19, v26, v34

    mul-double v21, v7, v17

    mul-double v28, v9, v19

    sub-double v21, v21, v28

    aput-wide v21, p2, v15

    mul-double v19, v19, v7

    mul-double v17, v17, v9

    add-double v19, v19, v17

    aput-wide v19, p2, v23

    add-double v24, v24, v36

    sub-double v26, v26, v34

    mul-double v17, v11, v24

    mul-double v19, v13, v26

    add-double v17, v17, v19

    aput-wide v17, p2, v16

    mul-double v26, v26, v11

    mul-double v24, v24, v13

    sub-double v26, v26, v24

    aput-wide v26, p2, v33

    sub-int v6, v1, v5

    add-int v15, v6, v1

    add-int v16, v15, v1

    add-int v17, v16, v1

    add-int v6, p3, v6

    aget-wide v18, p2, v6

    add-int v16, p3, v16

    aget-wide v20, p2, v16

    add-double v18, v18, v20

    add-int/lit8 v20, v6, 0x1

    aget-wide v21, p2, v20

    add-int/lit8 v23, v16, 0x1

    aget-wide v24, p2, v23

    add-double v21, v21, v24

    aget-wide v24, p2, v6

    aget-wide v26, p2, v16

    sub-double v24, v24, v26

    aget-wide v26, p2, v20

    aget-wide v28, p2, v23

    sub-double v26, v26, v28

    add-int v15, p3, v15

    aget-wide v28, p2, v15

    add-int v17, p3, v17

    aget-wide v30, p2, v17

    add-double v28, v28, v30

    add-int/lit8 v30, v15, 0x1

    aget-wide v31, p2, v30

    add-int/lit8 v33, v17, 0x1

    aget-wide v34, p2, v33

    add-double v31, v31, v34

    aget-wide v34, p2, v15

    aget-wide v36, p2, v17

    sub-double v34, v34, v36

    aget-wide v36, p2, v30

    aget-wide v38, p2, v33

    sub-double v36, v36, v38

    add-double v38, v18, v28

    aput-wide v38, p2, v6

    add-double v38, v21, v31

    aput-wide v38, p2, v20

    sub-double v18, v18, v28

    aput-wide v18, p2, v15

    sub-double v21, v21, v31

    aput-wide v21, p2, v30

    sub-double v18, v24, v36

    add-double v20, v26, v34

    mul-double v28, v9, v18

    mul-double v30, v7, v20

    sub-double v28, v28, v30

    aput-wide v28, p2, v16

    mul-double v9, v9, v20

    mul-double v7, v7, v18

    add-double/2addr v9, v7

    aput-wide v9, p2, v23

    add-double v24, v24, v36

    sub-double v26, v26, v34

    mul-double v6, v13, v24

    mul-double v8, v11, v26

    add-double/2addr v6, v8

    aput-wide v6, p2, v17

    mul-double v13, v13, v26

    mul-double v11, v11, v24

    sub-double/2addr v13, v11

    aput-wide v13, p2, v33

    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_0

    :cond_0
    add-int v4, v0, v1

    add-int v5, v4, v1

    add-int/2addr v1, v5

    add-int v0, p3, v0

    aget-wide v6, p2, v0

    add-int v5, p3, v5

    aget-wide v8, p2, v5

    add-double/2addr v6, v8

    add-int/lit8 v8, v0, 0x1

    aget-wide v9, p2, v8

    add-int/lit8 v11, v5, 0x1

    aget-wide v12, p2, v11

    add-double/2addr v9, v12

    aget-wide v12, p2, v0

    aget-wide v14, p2, v5

    sub-double/2addr v12, v14

    aget-wide v14, p2, v8

    aget-wide v16, p2, v11

    sub-double v14, v14, v16

    add-int v4, p3, v4

    aget-wide v16, p2, v4

    add-int v1, p3, v1

    aget-wide v18, p2, v1

    add-double v16, v16, v18

    add-int/lit8 v18, v4, 0x1

    aget-wide v19, p2, v18

    add-int/lit8 v21, v1, 0x1

    aget-wide v22, p2, v21

    add-double v19, v19, v22

    aget-wide v22, p2, v4

    aget-wide v24, p2, v1

    sub-double v22, v22, v24

    aget-wide v24, p2, v18

    aget-wide v26, p2, v21

    sub-double v24, v24, v26

    add-double v26, v6, v16

    aput-wide v26, p2, v0

    add-double v26, v9, v19

    aput-wide v26, p2, v8

    sub-double v6, v6, v16

    aput-wide v6, p2, v4

    sub-double v9, v9, v19

    aput-wide v9, p2, v18

    sub-double v6, v12, v24

    add-double v8, v14, v22

    sub-double v16, v6, v8

    mul-double v16, v16, v2

    aput-wide v16, p2, v5

    add-double/2addr v8, v6

    mul-double/2addr v8, v2

    aput-wide v8, p2, v11

    add-double v12, v12, v24

    sub-double v14, v14, v22

    neg-double v2, v2

    add-double v4, v12, v14

    mul-double/2addr v4, v2

    aput-wide v4, p2, v1

    sub-double/2addr v14, v12

    mul-double/2addr v2, v14

    aput-wide v2, p2, v21

    return-void
.end method

.method private a(I[D[DI)V
    .locals 76

    shr-int/lit8 v0, p1, 0x3

    mul-int/lit8 v1, v0, 0x2

    add-int v2, v1, v1

    add-int v3, v2, v1

    const/4 v4, 0x0

    aget-wide v5, p2, v4

    aget-wide v7, p2, v2

    add-double/2addr v5, v7

    const/4 v7, 0x1

    aget-wide v8, p2, v7

    add-int/lit8 v10, v2, 0x1

    aget-wide v11, p2, v10

    add-double/2addr v8, v11

    aget-wide v11, p2, v4

    aget-wide v13, p2, v2

    sub-double/2addr v11, v13

    aget-wide v13, p2, v7

    aget-wide v15, p2, v10

    sub-double/2addr v13, v15

    aget-wide v15, p2, v1

    aget-wide v17, p2, v3

    add-double v15, v15, v17

    add-int/lit8 v17, v1, 0x1

    aget-wide v18, p2, v17

    add-int/lit8 v20, v3, 0x1

    aget-wide v21, p2, v20

    add-double v18, v18, v21

    aget-wide v21, p2, v1

    aget-wide v23, p2, v3

    sub-double v21, v21, v23

    aget-wide v23, p2, v17

    aget-wide v25, p2, v20

    sub-double v23, v23, v25

    add-double v25, v5, v15

    aput-wide v25, p2, v4

    add-double v25, v8, v18

    aput-wide v25, p2, v7

    sub-double/2addr v5, v15

    aput-wide v5, p2, v1

    sub-double v8, v8, v18

    aput-wide v8, p2, v17

    sub-double v5, v11, v23

    aput-wide v5, p2, v2

    add-double v5, v13, v21

    aput-wide v5, p2, v10

    add-double v11, v11, v23

    aput-wide v11, p2, v3

    sub-double v13, v13, v21

    aput-wide v13, p2, v20

    add-int/lit8 v2, p4, 0x1

    aget-wide v2, p3, v2

    add-int/lit8 v5, p4, 0x2

    aget-wide v5, p3, v5

    add-int/lit8 v7, p4, 0x3

    aget-wide v7, p3, v7

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/4 v13, 0x2

    move-wide/from16 v16, v9

    move-wide v14, v11

    :goto_0
    move-wide/from16 v18, v2

    add-int/lit8 v2, v0, -0x2

    if-ge v13, v2, :cond_0

    add-int/lit8 v4, v4, 0x4

    add-int v2, p4, v4

    aget-wide v20, p3, v2

    add-double v11, v11, v20

    mul-double/2addr v11, v5

    add-int/lit8 v3, v2, 0x1

    aget-wide v20, p3, v3

    add-double v9, v9, v20

    mul-double/2addr v9, v5

    add-int/lit8 v20, v2, 0x2

    aget-wide v21, p3, v20

    add-double v14, v14, v21

    mul-double/2addr v14, v7

    add-int/lit8 v21, v2, 0x3

    aget-wide v22, p3, v21

    sub-double v16, v16, v22

    mul-double v16, v16, v7

    aget-wide v22, p3, v2

    aget-wide v2, p3, v3

    aget-wide v24, p3, v20

    move-wide/from16 v26, v7

    aget-wide v7, p3, v21

    neg-double v7, v7

    add-int v20, v13, v1

    add-int v21, v20, v1

    add-int v28, v21, v1

    aget-wide v29, p2, v13

    aget-wide v31, p2, v21

    add-double v29, v29, v31

    add-int/lit8 v31, v13, 0x1

    aget-wide v32, p2, v31

    add-int/lit8 v34, v21, 0x1

    aget-wide v35, p2, v34

    add-double v32, v32, v35

    aget-wide v35, p2, v13

    aget-wide v37, p2, v21

    sub-double v35, v35, v37

    aget-wide v37, p2, v31

    aget-wide v39, p2, v34

    sub-double v37, v37, v39

    add-int/lit8 v39, v13, 0x2

    aget-wide v40, p2, v39

    add-int/lit8 v42, v21, 0x2

    aget-wide v43, p2, v42

    add-double v40, v40, v43

    add-int/lit8 v43, v13, 0x3

    aget-wide v44, p2, v43

    add-int/lit8 v46, v21, 0x3

    aget-wide v47, p2, v46

    add-double v44, v44, v47

    aget-wide v47, p2, v39

    aget-wide v49, p2, v42

    sub-double v47, v47, v49

    aget-wide v49, p2, v43

    aget-wide v51, p2, v46

    sub-double v49, v49, v51

    aget-wide v51, p2, v20

    aget-wide v53, p2, v28

    add-double v51, v51, v53

    add-int/lit8 v53, v20, 0x1

    aget-wide v54, p2, v53

    add-int/lit8 v56, v28, 0x1

    aget-wide v57, p2, v56

    add-double v54, v54, v57

    aget-wide v57, p2, v20

    aget-wide v59, p2, v28

    sub-double v57, v57, v59

    aget-wide v59, p2, v53

    aget-wide v61, p2, v56

    sub-double v59, v59, v61

    add-int/lit8 v61, v20, 0x2

    aget-wide v62, p2, v61

    add-int/lit8 v64, v28, 0x2

    aget-wide v65, p2, v64

    add-double v62, v62, v65

    add-int/lit8 v65, v20, 0x3

    aget-wide v66, p2, v65

    add-int/lit8 v68, v28, 0x3

    aget-wide v69, p2, v68

    add-double v66, v66, v69

    aget-wide v69, p2, v61

    aget-wide v71, p2, v64

    sub-double v69, v69, v71

    aget-wide v71, p2, v65

    aget-wide v73, p2, v68

    sub-double v71, v71, v73

    add-double v73, v29, v51

    aput-wide v73, p2, v13

    add-double v73, v32, v54

    aput-wide v73, p2, v31

    add-double v73, v40, v62

    aput-wide v73, p2, v39

    add-double v73, v44, v66

    aput-wide v73, p2, v43

    sub-double v29, v29, v51

    aput-wide v29, p2, v20

    sub-double v32, v32, v54

    aput-wide v32, p2, v53

    sub-double v40, v40, v62

    aput-wide v40, p2, v61

    sub-double v44, v44, v66

    aput-wide v44, p2, v65

    sub-double v29, v35, v59

    add-double v31, v37, v57

    mul-double v39, v11, v29

    mul-double v43, v9, v31

    sub-double v39, v39, v43

    aput-wide v39, p2, v21

    mul-double v31, v31, v11

    mul-double v29, v29, v9

    add-double v31, v31, v29

    aput-wide v31, p2, v34

    sub-double v20, v47, v71

    add-double v29, v49, v69

    mul-double v31, v22, v20

    mul-double v33, v2, v29

    sub-double v31, v31, v33

    aput-wide v31, p2, v42

    mul-double v29, v29, v22

    mul-double v20, v20, v2

    add-double v29, v29, v20

    aput-wide v29, p2, v46

    add-double v35, v35, v59

    sub-double v37, v37, v57

    mul-double v20, v14, v35

    mul-double v29, v16, v37

    add-double v20, v20, v29

    aput-wide v20, p2, v28

    mul-double v37, v37, v14

    mul-double v35, v35, v16

    sub-double v37, v37, v35

    aput-wide v37, p2, v56

    add-double v47, v47, v71

    sub-double v49, v49, v69

    mul-double v20, v24, v47

    mul-double v28, v7, v49

    add-double v20, v20, v28

    aput-wide v20, p2, v64

    mul-double v49, v49, v24

    mul-double v47, v47, v7

    sub-double v49, v49, v47

    aput-wide v49, p2, v68

    sub-int v20, v1, v13

    add-int v21, v20, v1

    add-int v28, v21, v1

    add-int v29, v28, v1

    aget-wide v30, p2, v20

    aget-wide v32, p2, v28

    add-double v30, v30, v32

    add-int/lit8 v32, v20, 0x1

    aget-wide v33, p2, v32

    add-int/lit8 v35, v28, 0x1

    aget-wide v36, p2, v35

    add-double v33, v33, v36

    aget-wide v36, p2, v20

    aget-wide v38, p2, v28

    sub-double v36, v36, v38

    aget-wide v38, p2, v32

    aget-wide v40, p2, v35

    sub-double v38, v38, v40

    add-int/lit8 v40, v20, -0x2

    aget-wide v41, p2, v40

    add-int/lit8 v43, v28, -0x2

    aget-wide v44, p2, v43

    add-double v41, v41, v44

    add-int/lit8 v44, v20, -0x1

    aget-wide v45, p2, v44

    add-int/lit8 v47, v28, -0x1

    aget-wide v48, p2, v47

    add-double v45, v45, v48

    aget-wide v48, p2, v40

    aget-wide v50, p2, v43

    sub-double v48, v48, v50

    aget-wide v50, p2, v44

    aget-wide v52, p2, v47

    sub-double v50, v50, v52

    aget-wide v52, p2, v21

    aget-wide v54, p2, v29

    add-double v52, v52, v54

    add-int/lit8 v54, v21, 0x1

    aget-wide v55, p2, v54

    add-int/lit8 v57, v29, 0x1

    aget-wide v58, p2, v57

    add-double v55, v55, v58

    aget-wide v58, p2, v21

    aget-wide v60, p2, v29

    sub-double v58, v58, v60

    aget-wide v60, p2, v54

    aget-wide v62, p2, v57

    sub-double v60, v60, v62

    add-int/lit8 v62, v21, -0x2

    aget-wide v63, p2, v62

    add-int/lit8 v65, v29, -0x2

    aget-wide v66, p2, v65

    add-double v63, v63, v66

    add-int/lit8 v66, v21, -0x1

    aget-wide v67, p2, v66

    add-int/lit8 v69, v29, -0x1

    aget-wide v70, p2, v69

    add-double v67, v67, v70

    aget-wide v70, p2, v62

    aget-wide v72, p2, v65

    sub-double v70, v70, v72

    aget-wide v72, p2, v66

    aget-wide v74, p2, v69

    sub-double v72, v72, v74

    add-double v74, v30, v52

    aput-wide v74, p2, v20

    add-double v74, v33, v55

    aput-wide v74, p2, v32

    add-double v74, v41, v63

    aput-wide v74, p2, v40

    add-double v74, v45, v67

    aput-wide v74, p2, v44

    sub-double v30, v30, v52

    aput-wide v30, p2, v21

    sub-double v33, v33, v55

    aput-wide v33, p2, v54

    sub-double v41, v41, v63

    aput-wide v41, p2, v62

    sub-double v45, v45, v67

    aput-wide v45, p2, v66

    sub-double v20, v36, v60

    add-double v30, v38, v58

    mul-double v32, v9, v20

    mul-double v40, v11, v30

    sub-double v32, v32, v40

    aput-wide v32, p2, v28

    mul-double v9, v9, v30

    mul-double v11, v11, v20

    add-double/2addr v9, v11

    aput-wide v9, p2, v35

    sub-double v9, v48, v72

    add-double v11, v50, v70

    mul-double v20, v2, v9

    mul-double v30, v22, v11

    sub-double v20, v20, v30

    aput-wide v20, p2, v43

    mul-double/2addr v11, v2

    mul-double v9, v9, v22

    add-double/2addr v11, v9

    aput-wide v11, p2, v47

    add-double v36, v36, v60

    sub-double v38, v38, v58

    mul-double v9, v16, v36

    mul-double v11, v14, v38

    add-double/2addr v9, v11

    aput-wide v9, p2, v29

    mul-double v16, v16, v38

    mul-double v14, v14, v36

    sub-double v16, v16, v14

    aput-wide v16, p2, v57

    add-double v48, v48, v72

    sub-double v50, v50, v70

    mul-double v9, v7, v48

    mul-double v11, v24, v50

    add-double/2addr v9, v11

    aput-wide v9, p2, v65

    mul-double v50, v50, v7

    mul-double v48, v48, v24

    sub-double v50, v50, v48

    aput-wide v50, p2, v69

    add-int/lit8 v13, v13, 0x4

    move-wide v9, v2

    move-wide/from16 v16, v7

    move-wide/from16 v2, v18

    move-wide/from16 v11, v22

    move-wide/from16 v14, v24

    move-wide/from16 v7, v26

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v26, v7

    add-double v11, v11, v18

    mul-double/2addr v11, v5

    add-double v9, v9, v18

    mul-double/2addr v5, v9

    sub-double v14, v14, v18

    mul-double v7, v26, v14

    sub-double v16, v16, v18

    mul-double v3, v26, v16

    add-int v9, v0, v1

    add-int v10, v9, v1

    add-int/2addr v1, v10

    aget-wide v13, p2, v2

    add-int/lit8 v15, v10, -0x2

    aget-wide v16, p2, v15

    add-double v13, v13, v16

    add-int/lit8 v16, v0, -0x1

    aget-wide v20, p2, v16

    add-int/lit8 v17, v10, -0x1

    aget-wide v22, p2, v17

    add-double v20, v20, v22

    aget-wide v22, p2, v2

    aget-wide v24, p2, v15

    sub-double v22, v22, v24

    aget-wide v24, p2, v16

    aget-wide v26, p2, v17

    sub-double v24, v24, v26

    add-int/lit8 v26, v9, -0x2

    aget-wide v27, p2, v26

    add-int/lit8 v29, v1, -0x2

    aget-wide v30, p2, v29

    add-double v27, v27, v30

    add-int/lit8 v30, v9, -0x1

    aget-wide v31, p2, v30

    add-int/lit8 v33, v1, -0x1

    aget-wide v34, p2, v33

    add-double v31, v31, v34

    aget-wide v34, p2, v26

    aget-wide v36, p2, v29

    sub-double v34, v34, v36

    aget-wide v36, p2, v30

    aget-wide v38, p2, v33

    sub-double v36, v36, v38

    add-double v38, v13, v27

    aput-wide v38, p2, v2

    add-double v38, v20, v31

    aput-wide v38, p2, v16

    sub-double v13, v13, v27

    aput-wide v13, p2, v26

    sub-double v20, v20, v31

    aput-wide v20, p2, v30

    sub-double v13, v22, v36

    add-double v20, v24, v34

    mul-double v26, v11, v13

    mul-double v30, v5, v20

    sub-double v26, v26, v30

    aput-wide v26, p2, v15

    mul-double v20, v20, v11

    mul-double/2addr v13, v5

    add-double v20, v20, v13

    aput-wide v20, p2, v17

    add-double v22, v22, v36

    sub-double v24, v24, v34

    mul-double v13, v7, v22

    mul-double v15, v3, v24

    add-double/2addr v13, v15

    aput-wide v13, p2, v29

    mul-double v24, v24, v7

    mul-double v22, v22, v3

    sub-double v24, v24, v22

    aput-wide v24, p2, v33

    aget-wide v13, p2, v0

    aget-wide v15, p2, v10

    add-double/2addr v13, v15

    add-int/lit8 v2, v0, 0x1

    aget-wide v15, p2, v2

    add-int/lit8 v17, v10, 0x1

    aget-wide v20, p2, v17

    add-double v15, v15, v20

    aget-wide v20, p2, v0

    aget-wide v22, p2, v10

    sub-double v20, v20, v22

    aget-wide v22, p2, v2

    aget-wide v24, p2, v17

    sub-double v22, v22, v24

    aget-wide v24, p2, v9

    aget-wide v26, p2, v1

    add-double v24, v24, v26

    add-int/lit8 v26, v9, 0x1

    aget-wide v27, p2, v26

    add-int/lit8 v29, v1, 0x1

    aget-wide v30, p2, v29

    add-double v27, v27, v30

    aget-wide v30, p2, v9

    aget-wide v32, p2, v1

    sub-double v30, v30, v32

    aget-wide v32, p2, v26

    aget-wide v34, p2, v29

    sub-double v32, v32, v34

    add-double v34, v13, v24

    aput-wide v34, p2, v0

    add-double v34, v15, v27

    aput-wide v34, p2, v2

    sub-double v13, v13, v24

    aput-wide v13, p2, v9

    sub-double v15, v15, v27

    aput-wide v15, p2, v26

    sub-double v13, v20, v32

    add-double v15, v22, v30

    sub-double v24, v13, v15

    mul-double v24, v24, v18

    aput-wide v24, p2, v10

    add-double/2addr v15, v13

    mul-double v13, v18, v15

    aput-wide v13, p2, v17

    add-double v20, v20, v32

    sub-double v22, v22, v30

    move-wide/from16 v13, v18

    neg-double v13, v13

    add-double v15, v20, v22

    mul-double/2addr v15, v13

    aput-wide v15, p2, v1

    sub-double v22, v22, v20

    mul-double v13, v13, v22

    aput-wide v13, p2, v29

    add-int/lit8 v2, v0, 0x2

    aget-wide v13, p2, v2

    add-int/lit8 v15, v10, 0x2

    aget-wide v16, p2, v15

    add-double v13, v13, v16

    add-int/lit8 v0, v0, 0x3

    aget-wide v16, p2, v0

    add-int/lit8 v10, v10, 0x3

    aget-wide v18, p2, v10

    add-double v16, v16, v18

    aget-wide v18, p2, v2

    aget-wide v20, p2, v15

    sub-double v18, v18, v20

    aget-wide v20, p2, v0

    aget-wide v22, p2, v10

    sub-double v20, v20, v22

    add-int/lit8 v22, v9, 0x2

    aget-wide v23, p2, v22

    add-int/lit8 v25, v1, 0x2

    aget-wide v26, p2, v25

    add-double v23, v23, v26

    add-int/lit8 v9, v9, 0x3

    aget-wide v26, p2, v9

    add-int/lit8 v1, v1, 0x3

    aget-wide v28, p2, v1

    add-double v26, v26, v28

    aget-wide v28, p2, v22

    aget-wide v30, p2, v25

    sub-double v28, v28, v30

    aget-wide v30, p2, v9

    aget-wide v32, p2, v1

    sub-double v30, v30, v32

    add-double v32, v13, v23

    aput-wide v32, p2, v2

    add-double v32, v16, v26

    aput-wide v32, p2, v0

    sub-double v13, v13, v23

    aput-wide v13, p2, v22

    sub-double v16, v16, v26

    aput-wide v16, p2, v9

    sub-double v13, v18, v30

    add-double v16, v20, v28

    mul-double v22, v5, v13

    mul-double v26, v11, v16

    sub-double v22, v22, v26

    aput-wide v22, p2, v15

    mul-double v5, v5, v16

    mul-double/2addr v11, v13

    add-double/2addr v5, v11

    aput-wide v5, p2, v10

    add-double v18, v18, v30

    sub-double v20, v20, v28

    mul-double v5, v3, v18

    mul-double v9, v7, v20

    add-double/2addr v5, v9

    aput-wide v5, p2, v25

    mul-double v3, v3, v20

    mul-double v7, v7, v18

    sub-double/2addr v3, v7

    aput-wide v3, p2, v1

    return-void
.end method

.method private a(I[D[III[D)V
    .locals 11

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    move-object/from16 v9, p6

    const/16 v0, 0x20

    if-le v7, v0, :cond_2

    shr-int/lit8 v10, v7, 0x2

    sub-int v1, p5, v10

    invoke-direct {p0, p1, p2, v9, v1}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[D[DI)V

    const/16 v1, 0x200

    if-le v7, v1, :cond_0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, v10

    move-object v2, p2

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DII[D)V

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b(I[DII[D)V

    mul-int/lit8 v3, v10, 0x2

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DII[D)V

    mul-int/lit8 v3, v10, 0x3

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DII[D)V

    :goto_0
    move-object v0, p3

    move v1, p4

    goto :goto_1

    :cond_0
    if-le v10, v0, :cond_1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->c(I[DII[D)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->e(I[DII[D)V

    goto :goto_0

    :goto_1
    invoke-direct {p0, p1, p3, p4, p2}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[II[D)V

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    if-le v7, v1, :cond_4

    const/4 v2, 0x0

    if-ne v7, v0, :cond_3

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, v2, v9, v0}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a([DI[DI)V

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a([D)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, p2, v2, v9, v2}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->c([DI[DI)V

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->c([D)V

    goto :goto_2

    :cond_4
    if-ne v7, v1, :cond_5

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->e([D)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    if-ne v7, v0, :cond_6

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->g([D)V

    :cond_6
    :goto_2
    return-void
.end method

.method private final a(I[II[D)V
    .locals 18

    add-int/lit8 v0, p3, 0x0

    const/4 v1, 0x0

    aput v1, p2, v0

    const/4 v0, 0x1

    move/from16 v3, p1

    move v2, v0

    :goto_0
    shl-int/lit8 v4, v2, 0x3

    if-ge v4, v3, :cond_1

    shr-int/lit8 v3, v3, 0x1

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_0

    add-int v5, p3, v2

    add-int/2addr v5, v4

    add-int v6, p3, v4

    aget v6, p2, v6

    add-int/2addr v6, v3

    aput v6, p2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v5, v2, 0x2

    if-ne v4, v3, :cond_3

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_5

    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_2

    mul-int/lit8 v4, v3, 0x2

    add-int v6, p3, v0

    aget v6, p2, v6

    add-int/2addr v4, v6

    mul-int/lit8 v6, v0, 0x2

    add-int v7, p3, v3

    aget v7, p2, v7

    add-int/2addr v6, v7

    aget-wide v7, p4, v4

    add-int/lit8 v9, v4, 0x1

    aget-wide v10, p4, v9

    aget-wide v12, p4, v6

    add-int/lit8 v14, v6, 0x1

    aget-wide v15, p4, v14

    aput-wide v12, p4, v4

    aput-wide v15, p4, v9

    aput-wide v7, p4, v6

    aput-wide v10, p4, v14

    add-int/2addr v4, v5

    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    aget-wide v8, p4, v4

    add-int/lit8 v10, v4, 0x1

    aget-wide v11, p4, v10

    aget-wide v13, p4, v6

    add-int/lit8 v15, v6, 0x1

    aget-wide v16, p4, v15

    aput-wide v13, p4, v4

    aput-wide v16, p4, v10

    aput-wide v8, p4, v6

    aput-wide v11, p4, v15

    add-int/2addr v4, v5

    sub-int/2addr v6, v5

    aget-wide v8, p4, v4

    add-int/lit8 v10, v4, 0x1

    aget-wide v11, p4, v10

    aget-wide v13, p4, v6

    add-int/lit8 v15, v6, 0x1

    aget-wide v16, p4, v15

    aput-wide v13, p4, v4

    aput-wide v16, p4, v10

    aput-wide v8, p4, v6

    aput-wide v11, p4, v15

    add-int/2addr v4, v5

    add-int/2addr v6, v7

    aget-wide v7, p4, v4

    add-int/lit8 v9, v4, 0x1

    aget-wide v10, p4, v9

    aget-wide v12, p4, v6

    add-int/lit8 v14, v6, 0x1

    aget-wide v15, p4, v14

    aput-wide v12, p4, v4

    aput-wide v15, p4, v9

    aput-wide v7, p4, v6

    aput-wide v10, p4, v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v5

    add-int v4, p3, v0

    aget v4, p2, v4

    add-int/2addr v3, v4

    add-int v4, v3, v5

    aget-wide v6, p4, v3

    add-int/lit8 v8, v3, 0x1

    aget-wide v9, p4, v8

    aget-wide v11, p4, v4

    add-int/lit8 v13, v4, 0x1

    aget-wide v14, p4, v13

    aput-wide v11, p4, v3

    aput-wide v14, p4, v8

    aput-wide v6, p4, v4

    aput-wide v9, p4, v13

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_3
    :goto_4
    if-ge v0, v2, :cond_5

    move v3, v1

    :goto_5
    if-ge v3, v0, :cond_4

    mul-int/lit8 v4, v3, 0x2

    add-int v6, p3, v0

    aget v6, p2, v6

    add-int/2addr v4, v6

    mul-int/lit8 v6, v0, 0x2

    add-int v7, p3, v3

    aget v7, p2, v7

    add-int/2addr v6, v7

    aget-wide v7, p4, v4

    add-int/lit8 v9, v4, 0x1

    aget-wide v10, p4, v9

    aget-wide v12, p4, v6

    add-int/lit8 v14, v6, 0x1

    aget-wide v15, p4, v14

    aput-wide v12, p4, v4

    aput-wide v15, p4, v9

    aput-wide v7, p4, v6

    aput-wide v10, p4, v14

    add-int/2addr v4, v5

    add-int/2addr v6, v5

    aget-wide v7, p4, v4

    add-int/lit8 v9, v4, 0x1

    aget-wide v10, p4, v9

    aget-wide v12, p4, v6

    add-int/lit8 v14, v6, 0x1

    aget-wide v15, p4, v14

    aput-wide v12, p4, v4

    aput-wide v15, p4, v9

    aput-wide v7, p4, v6

    aput-wide v10, p4, v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private a(I[I[D)V
    .locals 22

    move/from16 v0, p1

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v2, 0x1

    aput v2, p2, v2

    const/4 v3, 0x2

    if-le v0, v3, :cond_4

    shr-int/2addr v0, v2

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v6, v0

    div-double/2addr v4, v6

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, p3, v1

    aput-wide v6, p3, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const/4 v2, 0x3

    const/4 v12, 0x4

    if-lt v0, v12, :cond_0

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    div-double v13, v10, v13

    aput-wide v13, p3, v3

    const-wide/high16 v13, 0x4018000000000000L    # 6.0

    mul-double/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    div-double v13, v10, v13

    aput-wide v13, p3, v2

    :cond_0
    move v13, v12

    :goto_0
    if-ge v13, v0, :cond_1

    int-to-double v14, v13

    mul-double v16, v4, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    aput-wide v18, p3, v13

    add-int/lit8 v18, v13, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    aput-wide v16, p3, v18

    add-int/lit8 v16, v13, 0x2

    const-wide/high16 v17, 0x4008000000000000L    # 3.0

    mul-double v17, v17, v4

    mul-double v17, v17, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    aput-wide v14, p3, v16

    add-int/lit8 v14, v13, 0x3

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    aput-wide v15, p3, v14

    add-int/lit8 v13, v13, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    if-le v0, v3, :cond_4

    add-int v4, v1, v0

    shr-int/lit8 v0, v0, 0x1

    aput-wide v8, p3, v4

    add-int/lit8 v5, v4, 0x1

    aput-wide v6, p3, v5

    if-lt v0, v12, :cond_2

    add-int/lit8 v5, v1, 0x4

    aget-wide v13, p3, v5

    add-int/lit8 v5, v1, 0x6

    aget-wide v15, p3, v5

    add-int/lit8 v5, v4, 0x2

    div-double v13, v10, v13

    aput-wide v13, p3, v5

    add-int/lit8 v5, v4, 0x3

    div-double v13, v10, v15

    aput-wide v13, p3, v5

    :cond_2
    move v5, v12

    :goto_2
    if-ge v5, v0, :cond_3

    mul-int/lit8 v13, v5, 0x2

    add-int/2addr v13, v1

    aget-wide v14, p3, v13

    add-int/lit8 v16, v13, 0x1

    aget-wide v16, p3, v16

    add-int/lit8 v18, v13, 0x2

    aget-wide v18, p3, v18

    add-int/2addr v13, v2

    aget-wide v20, p3, v13

    add-int v13, v4, v5

    aput-wide v14, p3, v13

    add-int/lit8 v14, v13, 0x1

    aput-wide v16, p3, v14

    add-int/lit8 v14, v13, 0x2

    aput-wide v18, p3, v14

    add-int/2addr v13, v2

    aput-wide v20, p3, v13

    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    return-void
.end method

.method private a(I[I[DI)V
    .locals 10

    const/4 v0, 0x1

    aput p1, p2, v0

    if-le p1, v0, :cond_0

    shr-int/lit8 p2, p1, 0x1

    const-wide v1, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v3, p2

    div-double/2addr v1, v3

    add-int/lit8 v5, p4, 0x0

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    aput-wide v3, p3, v5

    add-int v3, p4, p2

    aget-wide v4, p3, v5

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    aput-wide v4, p3, v3

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v3, p4, v0

    int-to-double v4, v0

    mul-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    aput-wide v8, p3, v3

    add-int v3, p4, p1

    sub-int/2addr v3, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    aput-wide v4, p3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a([D)V
    .locals 63

    const/4 v0, 0x2

    aget-wide v1, p1, v0

    const/4 v3, 0x3

    aget-wide v4, p1, v3

    const/4 v6, 0x4

    aget-wide v7, p1, v6

    const/4 v9, 0x5

    aget-wide v10, p1, v9

    const/4 v12, 0x6

    aget-wide v13, p1, v12

    const/4 v15, 0x7

    aget-wide v16, p1, v15

    const/16 v18, 0x8

    aget-wide v19, p1, v18

    const/16 v21, 0x9

    aget-wide v22, p1, v21

    const/16 v24, 0xa

    aget-wide v25, p1, v24

    const/16 v27, 0xb

    aget-wide v28, p1, v27

    const/16 v30, 0xe

    aget-wide v31, p1, v30

    const/16 v33, 0xf

    aget-wide v34, p1, v33

    const/16 v36, 0x10

    aget-wide v37, p1, v36

    const/16 v39, 0x11

    aget-wide v40, p1, v39

    const/16 v42, 0x14

    aget-wide v43, p1, v42

    const/16 v45, 0x15

    aget-wide v45, p1, v45

    const/16 v47, 0x16

    aget-wide v47, p1, v47

    const/16 v49, 0x17

    aget-wide v49, p1, v49

    const/16 v51, 0x18

    aget-wide v51, p1, v51

    const/16 v53, 0x19

    aget-wide v53, p1, v53

    const/16 v55, 0x1a

    aget-wide v55, p1, v55

    const/16 v57, 0x1b

    aget-wide v57, p1, v57

    const/16 v59, 0x1c

    aget-wide v59, p1, v59

    const/16 v61, 0x1d

    aget-wide v61, p1, v61

    aput-wide v37, p1, v0

    aput-wide v40, p1, v3

    aput-wide v19, p1, v6

    aput-wide v22, p1, v9

    aput-wide v51, p1, v12

    aput-wide v53, p1, v15

    aput-wide v7, p1, v18

    aput-wide v10, p1, v21

    aput-wide v43, p1, v24

    aput-wide v45, p1, v27

    aput-wide v59, p1, v30

    aput-wide v61, p1, v33

    aput-wide v1, p1, v36

    aput-wide v4, p1, v39

    aput-wide v25, p1, v42

    const/16 v0, 0x15

    aput-wide v28, p1, v0

    const/16 v0, 0x16

    aput-wide v55, p1, v0

    const/16 v0, 0x17

    aput-wide v57, p1, v0

    const/16 v0, 0x18

    aput-wide v13, p1, v0

    const/16 v0, 0x19

    aput-wide v16, p1, v0

    const/16 v0, 0x1a

    aput-wide v47, p1, v0

    const/16 v0, 0x1b

    aput-wide v49, p1, v0

    const/16 v0, 0x1c

    aput-wide v31, p1, v0

    const/16 v0, 0x1d

    aput-wide v34, p1, v0

    return-void
.end method

.method private a([DI[DI)V
    .locals 110

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v2, p4, 0x2

    aget-wide v3, p3, v2

    mul-double/2addr v3, v0

    aget-wide v5, p3, v2

    add-double/2addr v5, v3

    add-int/lit8 v2, p2, 0x0

    aget-wide v7, p1, v2

    add-int/lit8 v9, p2, 0x10

    aget-wide v10, p1, v9

    add-double/2addr v7, v10

    add-int/lit8 v10, p2, 0x1

    aget-wide v11, p1, v10

    add-int/lit8 v13, p2, 0x11

    aget-wide v14, p1, v13

    add-double/2addr v11, v14

    aget-wide v14, p1, v2

    aget-wide v16, p1, v9

    sub-double v14, v14, v16

    aget-wide v16, p1, v10

    aget-wide v18, p1, v13

    sub-double v16, v16, v18

    add-int/lit8 v18, p2, 0x8

    aget-wide v19, p1, v18

    add-int/lit8 v21, p2, 0x18

    aget-wide v22, p1, v21

    add-double v19, v19, v22

    add-int/lit8 v22, p2, 0x9

    aget-wide v23, p1, v22

    add-int/lit8 v25, p2, 0x19

    aget-wide v26, p1, v25

    add-double v23, v23, v26

    aget-wide v26, p1, v18

    aget-wide v28, p1, v21

    sub-double v26, v26, v28

    aget-wide v28, p1, v22

    aget-wide v30, p1, v25

    sub-double v28, v28, v30

    add-double v30, v7, v19

    add-double v32, v11, v23

    sub-double v7, v7, v19

    sub-double v11, v11, v23

    sub-double v19, v14, v28

    add-double v23, v16, v26

    add-double v14, v14, v28

    sub-double v16, v16, v26

    add-int/lit8 v26, p2, 0x2

    aget-wide v27, p1, v26

    add-int/lit8 v29, p2, 0x12

    aget-wide v34, p1, v29

    add-double v27, v27, v34

    add-int/lit8 v34, p2, 0x3

    aget-wide v35, p1, v34

    add-int/lit8 v37, p2, 0x13

    aget-wide v38, p1, v37

    add-double v35, v35, v38

    aget-wide v38, p1, v26

    aget-wide v40, p1, v29

    sub-double v38, v38, v40

    aget-wide v40, p1, v34

    aget-wide v42, p1, v37

    sub-double v40, v40, v42

    add-int/lit8 v42, p2, 0xa

    aget-wide v43, p1, v42

    add-int/lit8 v45, p2, 0x1a

    aget-wide v46, p1, v45

    add-double v43, v43, v46

    add-int/lit8 v46, p2, 0xb

    aget-wide v47, p1, v46

    add-int/lit8 v49, p2, 0x1b

    aget-wide v50, p1, v49

    add-double v47, v47, v50

    aget-wide v50, p1, v42

    aget-wide v52, p1, v45

    sub-double v50, v50, v52

    aget-wide v52, p1, v46

    aget-wide v54, p1, v49

    sub-double v52, v52, v54

    add-double v54, v27, v43

    add-double v56, v35, v47

    sub-double v27, v27, v43

    sub-double v35, v35, v47

    sub-double v43, v38, v52

    add-double v47, v40, v50

    mul-double v58, v5, v43

    mul-double v60, v3, v47

    sub-double v58, v58, v60

    mul-double v47, v47, v5

    mul-double v43, v43, v3

    add-double v47, v47, v43

    add-double v38, v38, v52

    sub-double v40, v40, v50

    mul-double v43, v3, v38

    mul-double v50, v5, v40

    sub-double v43, v43, v50

    mul-double v40, v40, v3

    mul-double v38, v38, v5

    add-double v40, v40, v38

    add-int/lit8 v38, p2, 0x4

    aget-wide v50, p1, v38

    add-int/lit8 v39, p2, 0x14

    aget-wide v52, p1, v39

    add-double v50, v50, v52

    add-int/lit8 v52, p2, 0x5

    aget-wide v60, p1, v52

    add-int/lit8 v53, p2, 0x15

    aget-wide v62, p1, v53

    add-double v60, v60, v62

    aget-wide v62, p1, v38

    aget-wide v64, p1, v39

    sub-double v62, v62, v64

    aget-wide v64, p1, v52

    aget-wide v66, p1, v53

    sub-double v64, v64, v66

    add-int/lit8 v66, p2, 0xc

    aget-wide v67, p1, v66

    add-int/lit8 v69, p2, 0x1c

    aget-wide v70, p1, v69

    add-double v67, v67, v70

    add-int/lit8 v70, p2, 0xd

    aget-wide v71, p1, v70

    add-int/lit8 v73, p2, 0x1d

    aget-wide v74, p1, v73

    add-double v71, v71, v74

    aget-wide v74, p1, v66

    aget-wide v76, p1, v69

    sub-double v74, v74, v76

    aget-wide v76, p1, v70

    aget-wide v78, p1, v73

    sub-double v76, v76, v78

    add-double v78, v50, v67

    add-double v80, v60, v71

    sub-double v50, v50, v67

    sub-double v60, v60, v71

    sub-double v67, v62, v76

    add-double v71, v64, v74

    sub-double v82, v67, v71

    mul-double v82, v82, v0

    add-double v71, v71, v67

    mul-double v71, v71, v0

    add-double v62, v62, v76

    sub-double v64, v64, v74

    add-double v67, v62, v64

    mul-double v67, v67, v0

    sub-double v64, v64, v62

    mul-double v64, v64, v0

    add-int/lit8 v62, p2, 0x6

    aget-wide v74, p1, v62

    add-int/lit8 v63, p2, 0x16

    aget-wide v76, p1, v63

    add-double v74, v74, v76

    add-int/lit8 v76, p2, 0x7

    aget-wide v84, p1, v76

    add-int/lit8 v77, p2, 0x17

    aget-wide v86, p1, v77

    add-double v84, v84, v86

    aget-wide v86, p1, v62

    aget-wide v88, p1, v63

    sub-double v86, v86, v88

    aget-wide v88, p1, v76

    aget-wide v90, p1, v77

    sub-double v88, v88, v90

    add-int/lit8 v90, p2, 0xe

    aget-wide v91, p1, v90

    add-int/lit8 v93, p2, 0x1e

    aget-wide v94, p1, v93

    add-double v91, v91, v94

    add-int/lit8 v94, p2, 0xf

    aget-wide v95, p1, v94

    add-int/lit8 v97, p2, 0x1f

    aget-wide v98, p1, v97

    add-double v95, v95, v98

    aget-wide v98, p1, v90

    aget-wide v100, p1, v93

    sub-double v98, v98, v100

    aget-wide v100, p1, v94

    aget-wide v102, p1, v97

    sub-double v100, v100, v102

    add-double v102, v74, v91

    add-double v104, v84, v95

    sub-double v74, v74, v91

    sub-double v84, v84, v95

    sub-double v91, v86, v100

    add-double v95, v88, v98

    mul-double v106, v3, v91

    mul-double v108, v5, v95

    sub-double v106, v106, v108

    mul-double v95, v95, v3

    mul-double v91, v91, v5

    add-double v95, v95, v91

    add-double v86, v86, v100

    sub-double v88, v88, v98

    mul-double v91, v5, v86

    mul-double v98, v3, v88

    sub-double v91, v91, v98

    mul-double v5, v5, v88

    mul-double v3, v3, v86

    add-double/2addr v5, v3

    sub-double v3, v14, v67

    sub-double v86, v16, v64

    add-double v14, v14, v67

    add-double v16, v16, v64

    sub-double v64, v43, v91

    sub-double v67, v40, v5

    add-double v43, v43, v91

    add-double v40, v40, v5

    add-double v5, v3, v64

    aput-wide v5, p1, v21

    add-double v5, v86, v67

    aput-wide v5, p1, v25

    sub-double v3, v3, v64

    aput-wide v3, p1, v45

    sub-double v86, v86, v67

    aput-wide v86, p1, v49

    sub-double v3, v14, v40

    aput-wide v3, p1, v69

    add-double v3, v16, v43

    aput-wide v3, p1, v73

    add-double v14, v14, v40

    aput-wide v14, p1, v93

    sub-double v16, v16, v43

    aput-wide v16, p1, v97

    add-double v3, v19, v82

    add-double v5, v23, v71

    sub-double v19, v19, v82

    sub-double v23, v23, v71

    add-double v14, v58, v106

    add-double v16, v47, v95

    sub-double v58, v58, v106

    sub-double v47, v47, v95

    add-double v40, v3, v14

    aput-wide v40, p1, v9

    add-double v40, v5, v16

    aput-wide v40, p1, v13

    sub-double/2addr v3, v14

    aput-wide v3, p1, v29

    sub-double v5, v5, v16

    aput-wide v5, p1, v37

    sub-double v3, v19, v47

    aput-wide v3, p1, v39

    add-double v3, v23, v58

    aput-wide v3, p1, v53

    add-double v19, v19, v47

    aput-wide v19, p1, v63

    sub-double v23, v23, v58

    aput-wide v23, p1, v77

    sub-double v3, v27, v84

    add-double v5, v35, v74

    sub-double v13, v3, v5

    mul-double/2addr v13, v0

    add-double/2addr v5, v3

    mul-double/2addr v5, v0

    add-double v27, v27, v84

    sub-double v35, v35, v74

    sub-double v3, v27, v35

    mul-double/2addr v3, v0

    add-double v35, v35, v27

    mul-double v0, v0, v35

    sub-double v15, v7, v60

    add-double v19, v11, v50

    add-double v7, v7, v60

    sub-double v11, v11, v50

    add-double v23, v15, v13

    aput-wide v23, p1, v18

    add-double v17, v19, v5

    aput-wide v17, p1, v22

    sub-double/2addr v15, v13

    aput-wide v15, p1, v42

    sub-double v19, v19, v5

    aput-wide v19, p1, v46

    sub-double v5, v7, v0

    aput-wide v5, p1, v66

    add-double v5, v11, v3

    aput-wide v5, p1, v70

    add-double/2addr v7, v0

    aput-wide v7, p1, v90

    sub-double/2addr v11, v3

    aput-wide v11, p1, v94

    add-double v0, v30, v78

    add-double v3, v32, v80

    sub-double v30, v30, v78

    sub-double v32, v32, v80

    add-double v5, v54, v102

    add-double v7, v56, v104

    sub-double v54, v54, v102

    sub-double v56, v56, v104

    add-double v11, v0, v5

    aput-wide v11, p1, v2

    add-double v11, v3, v7

    aput-wide v11, p1, v10

    sub-double/2addr v0, v5

    aput-wide v0, p1, v26

    sub-double/2addr v3, v7

    aput-wide v3, p1, v34

    sub-double v0, v30, v56

    aput-wide v0, p1, v38

    add-double v0, v32, v54

    aput-wide v0, p1, v52

    add-double v30, v30, v56

    aput-wide v30, p1, v62

    sub-double v32, v32, v54

    aput-wide v32, p1, v76

    return-void
.end method

.method private b(I[DII[D)V
    .locals 7

    shr-int/lit8 v6, p1, 0x2

    sub-int v5, p4, p1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b(I[DI[DI)V

    const/16 v0, 0x200

    if-le p1, v0, :cond_0

    move-object v0, p0

    move v1, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DII[D)V

    add-int v3, p3, v6

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b(I[DII[D)V

    mul-int/lit8 p1, v6, 0x2

    add-int v3, p3, p1

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DII[D)V

    mul-int/lit8 p1, v6, 0x3

    add-int v3, p3, p1

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b(I[DII[D)V

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->d(I[DII[D)V

    :goto_0
    return-void
.end method

.method private final b(I[DI[DI)V
    .locals 48

    shr-int/lit8 v0, p1, 0x3

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, p5, 0x1

    aget-wide v2, p4, v2

    add-int v4, v1, v1

    add-int v5, v4, v1

    add-int/lit8 v6, p3, 0x0

    aget-wide v7, p2, v6

    add-int v4, p3, v4

    add-int/lit8 v9, v4, 0x1

    aget-wide v10, p2, v9

    sub-double/2addr v7, v10

    add-int/lit8 v10, p3, 0x1

    aget-wide v11, p2, v10

    aget-wide v13, p2, v4

    add-double/2addr v11, v13

    aget-wide v13, p2, v6

    aget-wide v15, p2, v9

    add-double/2addr v13, v15

    aget-wide v15, p2, v10

    aget-wide v17, p2, v4

    sub-double v15, v15, v17

    add-int v17, p3, v1

    aget-wide v18, p2, v17

    add-int v5, p3, v5

    add-int/lit8 v20, v5, 0x1

    aget-wide v21, p2, v20

    sub-double v18, v18, v21

    add-int/lit8 v21, v17, 0x1

    aget-wide v22, p2, v21

    aget-wide v24, p2, v5

    add-double v22, v22, v24

    aget-wide v24, p2, v17

    aget-wide v26, p2, v20

    add-double v24, v24, v26

    aget-wide v26, p2, v21

    aget-wide v28, p2, v5

    sub-double v26, v26, v28

    sub-double v28, v18, v22

    mul-double v28, v28, v2

    add-double v22, v22, v18

    mul-double v22, v22, v2

    add-double v18, v7, v28

    aput-wide v18, p2, v6

    add-double v18, v11, v22

    aput-wide v18, p2, v10

    sub-double v7, v7, v28

    aput-wide v7, p2, v17

    sub-double v11, v11, v22

    aput-wide v11, p2, v21

    sub-double v6, v24, v26

    mul-double/2addr v6, v2

    add-double v26, v26, v24

    mul-double v2, v2, v26

    sub-double v10, v13, v2

    aput-wide v10, p2, v4

    add-double v10, v15, v6

    aput-wide v10, p2, v9

    add-double/2addr v13, v2

    aput-wide v13, p2, v5

    sub-double/2addr v15, v6

    aput-wide v15, p2, v20

    mul-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    :goto_0
    if-ge v4, v0, :cond_0

    add-int/lit8 v3, v3, 0x4

    add-int v5, p5, v3

    aget-wide v6, p4, v5

    add-int/lit8 v8, v5, 0x1

    aget-wide v8, p4, v8

    add-int/lit8 v10, v5, 0x2

    aget-wide v10, p4, v10

    add-int/lit8 v5, v5, 0x3

    aget-wide v12, p4, v5

    neg-double v12, v12

    add-int/lit8 v2, v2, -0x4

    add-int v5, p5, v2

    aget-wide v14, p4, v5

    add-int/lit8 v16, v5, 0x1

    aget-wide v16, p4, v16

    add-int/lit8 v18, v5, 0x2

    aget-wide v18, p4, v18

    add-int/lit8 v5, v5, 0x3

    move/from16 v20, v2

    move/from16 p1, v3

    aget-wide v2, p4, v5

    neg-double v2, v2

    add-int v5, v4, v1

    add-int v21, v5, v1

    add-int v22, v21, v1

    add-int v23, p3, v4

    aget-wide v24, p2, v23

    add-int v21, p3, v21

    add-int/lit8 v26, v21, 0x1

    aget-wide v27, p2, v26

    sub-double v24, v24, v27

    add-int/lit8 v27, v23, 0x1

    aget-wide v28, p2, v27

    aget-wide v30, p2, v21

    add-double v28, v28, v30

    aget-wide v30, p2, v23

    aget-wide v32, p2, v26

    add-double v30, v30, v32

    aget-wide v32, p2, v27

    aget-wide v34, p2, v21

    sub-double v32, v32, v34

    add-int v5, p3, v5

    aget-wide v34, p2, v5

    add-int v22, p3, v22

    add-int/lit8 v36, v22, 0x1

    aget-wide v37, p2, v36

    sub-double v34, v34, v37

    add-int/lit8 v37, v5, 0x1

    aget-wide v38, p2, v37

    aget-wide v40, p2, v22

    add-double v38, v38, v40

    aget-wide v40, p2, v5

    aget-wide v42, p2, v36

    add-double v40, v40, v42

    aget-wide v42, p2, v37

    aget-wide v44, p2, v22

    sub-double v42, v42, v44

    mul-double v44, v6, v24

    mul-double v46, v8, v28

    sub-double v44, v44, v46

    mul-double v28, v28, v6

    mul-double v24, v24, v8

    add-double v28, v28, v24

    mul-double v24, v16, v34

    mul-double v46, v14, v38

    sub-double v24, v24, v46

    mul-double v38, v38, v16

    mul-double v34, v34, v14

    add-double v38, v38, v34

    add-double v34, v44, v24

    aput-wide v34, p2, v23

    add-double v34, v28, v38

    aput-wide v34, p2, v27

    sub-double v44, v44, v24

    aput-wide v44, p2, v5

    sub-double v28, v28, v38

    aput-wide v28, p2, v37

    mul-double v23, v10, v30

    mul-double v27, v12, v32

    add-double v23, v23, v27

    mul-double v32, v32, v10

    mul-double v30, v30, v12

    sub-double v32, v32, v30

    mul-double v27, v2, v40

    mul-double v29, v18, v42

    add-double v27, v27, v29

    mul-double v42, v42, v2

    mul-double v40, v40, v18

    sub-double v42, v42, v40

    add-double v29, v23, v27

    aput-wide v29, p2, v21

    add-double v29, v32, v42

    aput-wide v29, p2, v26

    sub-double v23, v23, v27

    aput-wide v23, p2, v22

    sub-double v32, v32, v42

    aput-wide v32, p2, v36

    sub-int v5, v1, v4

    add-int v21, v5, v1

    add-int v22, v21, v1

    add-int v23, v22, v1

    add-int v5, p3, v5

    aget-wide v24, p2, v5

    add-int v22, p3, v22

    add-int/lit8 v26, v22, 0x1

    aget-wide v27, p2, v26

    sub-double v24, v24, v27

    add-int/lit8 v27, v5, 0x1

    aget-wide v28, p2, v27

    aget-wide v30, p2, v22

    add-double v28, v28, v30

    aget-wide v30, p2, v5

    aget-wide v32, p2, v26

    add-double v30, v30, v32

    aget-wide v32, p2, v27

    aget-wide v34, p2, v22

    sub-double v32, v32, v34

    add-int v21, p3, v21

    aget-wide v34, p2, v21

    add-int v23, p3, v23

    add-int/lit8 v36, v23, 0x1

    aget-wide v37, p2, v36

    sub-double v34, v34, v37

    add-int/lit8 v37, v21, 0x1

    aget-wide v38, p2, v37

    aget-wide v40, p2, v23

    add-double v38, v38, v40

    aget-wide v40, p2, v21

    aget-wide v42, p2, v36

    add-double v40, v40, v42

    aget-wide v42, p2, v37

    aget-wide v44, p2, v23

    sub-double v42, v42, v44

    mul-double v44, v14, v24

    mul-double v46, v16, v28

    sub-double v44, v44, v46

    mul-double v14, v14, v28

    mul-double v16, v16, v24

    add-double v14, v14, v16

    mul-double v16, v8, v34

    mul-double v24, v6, v38

    sub-double v16, v16, v24

    mul-double v8, v8, v38

    mul-double v6, v6, v34

    add-double/2addr v8, v6

    add-double v6, v44, v16

    aput-wide v6, p2, v5

    add-double v5, v14, v8

    aput-wide v5, p2, v27

    sub-double v44, v44, v16

    aput-wide v44, p2, v21

    sub-double/2addr v14, v8

    aput-wide v14, p2, v37

    mul-double v5, v18, v30

    mul-double v7, v2, v32

    add-double/2addr v5, v7

    mul-double v18, v18, v32

    mul-double v2, v2, v30

    sub-double v18, v18, v2

    mul-double v2, v12, v40

    mul-double v7, v10, v42

    add-double/2addr v2, v7

    mul-double v12, v12, v42

    mul-double v10, v10, v40

    sub-double/2addr v12, v10

    add-double v7, v5, v2

    aput-wide v7, p2, v22

    add-double v7, v18, v12

    aput-wide v7, p2, v26

    sub-double/2addr v5, v2

    aput-wide v5, p2, v23

    sub-double v18, v18, v12

    aput-wide v18, p2, v36

    add-int/lit8 v4, v4, 0x2

    move/from16 v3, p1

    move/from16 v2, v20

    goto/16 :goto_0

    :cond_0
    add-int v2, p5, v1

    aget-wide v3, p4, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v5, p4, v2

    add-int v2, v0, v1

    add-int v7, v2, v1

    add-int/2addr v1, v7

    add-int v0, p3, v0

    aget-wide v8, p2, v0

    add-int v7, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget-wide v11, p2, v10

    sub-double/2addr v8, v11

    add-int/lit8 v11, v0, 0x1

    aget-wide v12, p2, v11

    aget-wide v14, p2, v7

    add-double/2addr v12, v14

    aget-wide v14, p2, v0

    aget-wide v16, p2, v10

    add-double v14, v14, v16

    aget-wide v16, p2, v11

    aget-wide v18, p2, v7

    sub-double v16, v16, v18

    add-int v2, p3, v2

    aget-wide v18, p2, v2

    add-int v1, p3, v1

    add-int/lit8 v20, v1, 0x1

    aget-wide v21, p2, v20

    sub-double v18, v18, v21

    add-int/lit8 v21, v2, 0x1

    aget-wide v22, p2, v21

    aget-wide v24, p2, v1

    add-double v22, v22, v24

    aget-wide v24, p2, v2

    aget-wide v26, p2, v20

    add-double v24, v24, v26

    aget-wide v26, p2, v21

    aget-wide v28, p2, v1

    sub-double v26, v26, v28

    mul-double v28, v3, v8

    mul-double v30, v5, v12

    sub-double v28, v28, v30

    mul-double/2addr v12, v3

    mul-double/2addr v8, v5

    add-double/2addr v12, v8

    mul-double v8, v5, v18

    mul-double v30, v3, v22

    sub-double v8, v8, v30

    mul-double v22, v22, v5

    mul-double v18, v18, v3

    add-double v22, v22, v18

    add-double v18, v28, v8

    aput-wide v18, p2, v0

    add-double v18, v12, v22

    aput-wide v18, p2, v11

    sub-double v28, v28, v8

    aput-wide v28, p2, v2

    sub-double v12, v12, v22

    aput-wide v12, p2, v21

    mul-double v8, v5, v14

    mul-double v11, v3, v16

    sub-double/2addr v8, v11

    mul-double v16, v16, v5

    mul-double/2addr v14, v3

    add-double v16, v16, v14

    mul-double v11, v3, v24

    mul-double v13, v5, v26

    sub-double/2addr v11, v13

    mul-double v3, v3, v26

    mul-double v5, v5, v24

    add-double/2addr v3, v5

    sub-double v5, v8, v11

    aput-wide v5, p2, v7

    sub-double v5, v16, v3

    aput-wide v5, p2, v10

    add-double/2addr v8, v11

    aput-wide v8, p2, v1

    add-double v16, v16, v3

    aput-wide v16, p2, v20

    return-void
.end method

.method private final b(I[D[DI)V
    .locals 75

    shr-int/lit8 v0, p1, 0x3

    mul-int/lit8 v1, v0, 0x2

    add-int v2, v1, v1

    add-int v3, v2, v1

    const/4 v4, 0x0

    aget-wide v5, p2, v4

    aget-wide v7, p2, v2

    add-double/2addr v5, v7

    const/4 v7, 0x1

    aget-wide v8, p2, v7

    neg-double v8, v8

    add-int/lit8 v10, v2, 0x1

    aget-wide v11, p2, v10

    sub-double/2addr v8, v11

    aget-wide v11, p2, v4

    aget-wide v13, p2, v2

    sub-double/2addr v11, v13

    aget-wide v13, p2, v7

    neg-double v13, v13

    aget-wide v15, p2, v10

    add-double/2addr v13, v15

    aget-wide v15, p2, v1

    aget-wide v17, p2, v3

    add-double v15, v15, v17

    add-int/lit8 v17, v1, 0x1

    aget-wide v18, p2, v17

    add-int/lit8 v20, v3, 0x1

    aget-wide v21, p2, v20

    add-double v18, v18, v21

    aget-wide v21, p2, v1

    aget-wide v23, p2, v3

    sub-double v21, v21, v23

    aget-wide v23, p2, v17

    aget-wide v25, p2, v20

    sub-double v23, v23, v25

    add-double v25, v5, v15

    aput-wide v25, p2, v4

    sub-double v25, v8, v18

    aput-wide v25, p2, v7

    sub-double/2addr v5, v15

    aput-wide v5, p2, v1

    add-double v8, v8, v18

    aput-wide v8, p2, v17

    add-double v5, v11, v23

    aput-wide v5, p2, v2

    add-double v5, v13, v21

    aput-wide v5, p2, v10

    sub-double v11, v11, v23

    aput-wide v11, p2, v3

    sub-double v13, v13, v21

    aput-wide v13, p2, v20

    add-int/lit8 v2, p4, 0x1

    aget-wide v2, p3, v2

    add-int/lit8 v5, p4, 0x2

    aget-wide v5, p3, v5

    add-int/lit8 v7, p4, 0x3

    aget-wide v7, p3, v7

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/4 v13, 0x2

    move-wide/from16 v16, v9

    move-wide v14, v11

    :goto_0
    move-wide/from16 v18, v2

    add-int/lit8 v2, v0, -0x2

    if-ge v13, v2, :cond_0

    add-int/lit8 v4, v4, 0x4

    add-int v2, p4, v4

    aget-wide v20, p3, v2

    add-double v11, v11, v20

    mul-double/2addr v11, v5

    add-int/lit8 v3, v2, 0x1

    aget-wide v20, p3, v3

    add-double v9, v9, v20

    mul-double/2addr v9, v5

    add-int/lit8 v20, v2, 0x2

    aget-wide v21, p3, v20

    add-double v14, v14, v21

    mul-double/2addr v14, v7

    add-int/lit8 v21, v2, 0x3

    aget-wide v22, p3, v21

    sub-double v16, v16, v22

    mul-double v16, v16, v7

    aget-wide v22, p3, v2

    aget-wide v2, p3, v3

    aget-wide v24, p3, v20

    move-wide/from16 v26, v7

    aget-wide v7, p3, v21

    neg-double v7, v7

    add-int v20, v13, v1

    add-int v21, v20, v1

    add-int v28, v21, v1

    aget-wide v29, p2, v13

    aget-wide v31, p2, v21

    add-double v29, v29, v31

    add-int/lit8 v31, v13, 0x1

    move/from16 p1, v4

    move-wide/from16 v32, v5

    aget-wide v4, p2, v31

    neg-double v4, v4

    add-int/lit8 v6, v21, 0x1

    aget-wide v34, p2, v6

    sub-double v4, v4, v34

    aget-wide v34, p2, v13

    aget-wide v36, p2, v21

    sub-double v34, v34, v36

    move/from16 v36, v0

    move/from16 v37, v1

    aget-wide v0, p2, v31

    neg-double v0, v0

    aget-wide v38, p2, v6

    add-double v0, v0, v38

    add-int/lit8 v38, v13, 0x2

    aget-wide v39, p2, v38

    add-int/lit8 v41, v21, 0x2

    aget-wide v42, p2, v41

    add-double v39, v39, v42

    add-int/lit8 v42, v13, 0x3

    move-wide/from16 v43, v7

    aget-wide v7, p2, v42

    neg-double v7, v7

    add-int/lit8 v45, v21, 0x3

    aget-wide v46, p2, v45

    sub-double v7, v7, v46

    aget-wide v46, p2, v38

    aget-wide v48, p2, v41

    sub-double v46, v46, v48

    move-wide/from16 v48, v14

    aget-wide v14, p2, v42

    neg-double v14, v14

    aget-wide v50, p2, v45

    add-double v14, v14, v50

    aget-wide v50, p2, v20

    aget-wide v52, p2, v28

    add-double v50, v50, v52

    add-int/lit8 v52, v20, 0x1

    aget-wide v53, p2, v52

    add-int/lit8 v55, v28, 0x1

    aget-wide v56, p2, v55

    add-double v53, v53, v56

    aget-wide v56, p2, v20

    aget-wide v58, p2, v28

    sub-double v56, v56, v58

    aget-wide v58, p2, v52

    aget-wide v60, p2, v55

    sub-double v58, v58, v60

    add-int/lit8 v60, v20, 0x2

    aget-wide v61, p2, v60

    add-int/lit8 v63, v28, 0x2

    aget-wide v64, p2, v63

    add-double v61, v61, v64

    add-int/lit8 v64, v20, 0x3

    aget-wide v65, p2, v64

    add-int/lit8 v67, v28, 0x3

    aget-wide v68, p2, v67

    add-double v65, v65, v68

    aget-wide v68, p2, v60

    aget-wide v70, p2, v63

    sub-double v68, v68, v70

    aget-wide v70, p2, v64

    aget-wide v72, p2, v67

    sub-double v70, v70, v72

    add-double v72, v29, v50

    aput-wide v72, p2, v13

    sub-double v72, v4, v53

    aput-wide v72, p2, v31

    add-double v72, v39, v61

    aput-wide v72, p2, v38

    sub-double v72, v7, v65

    aput-wide v72, p2, v42

    sub-double v29, v29, v50

    aput-wide v29, p2, v20

    add-double v4, v4, v53

    aput-wide v4, p2, v52

    sub-double v39, v39, v61

    aput-wide v39, p2, v60

    add-double v7, v7, v65

    aput-wide v7, p2, v64

    add-double v4, v34, v58

    add-double v7, v0, v56

    mul-double v29, v11, v4

    mul-double v38, v9, v7

    sub-double v29, v29, v38

    aput-wide v29, p2, v21

    mul-double/2addr v7, v11

    mul-double/2addr v4, v9

    add-double/2addr v7, v4

    aput-wide v7, p2, v6

    add-double v4, v46, v70

    add-double v6, v14, v68

    mul-double v20, v22, v4

    mul-double v29, v2, v6

    sub-double v20, v20, v29

    aput-wide v20, p2, v41

    mul-double v6, v6, v22

    mul-double/2addr v4, v2

    add-double/2addr v6, v4

    aput-wide v6, p2, v45

    sub-double v34, v34, v58

    sub-double v0, v0, v56

    mul-double v4, v48, v34

    mul-double v6, v16, v0

    add-double/2addr v4, v6

    aput-wide v4, p2, v28

    mul-double v0, v0, v48

    mul-double v34, v34, v16

    sub-double v0, v0, v34

    aput-wide v0, p2, v55

    sub-double v46, v46, v70

    sub-double v14, v14, v68

    mul-double v0, v24, v46

    mul-double v7, v43, v14

    add-double/2addr v0, v7

    aput-wide v0, p2, v63

    mul-double v14, v14, v24

    mul-double v7, v43, v46

    sub-double/2addr v14, v7

    aput-wide v14, p2, v67

    sub-int v1, v37, v13

    add-int v0, v1, v37

    add-int v4, v0, v37

    add-int v5, v4, v37

    aget-wide v6, p2, v1

    aget-wide v14, p2, v4

    add-double/2addr v6, v14

    add-int/lit8 v8, v1, 0x1

    aget-wide v14, p2, v8

    neg-double v14, v14

    add-int/lit8 v20, v4, 0x1

    aget-wide v28, p2, v20

    sub-double v14, v14, v28

    aget-wide v28, p2, v1

    aget-wide v30, p2, v4

    sub-double v28, v28, v30

    move-wide/from16 v30, v2

    aget-wide v2, p2, v8

    neg-double v2, v2

    aget-wide v34, p2, v20

    add-double v2, v2, v34

    add-int/lit8 v21, v1, -0x2

    aget-wide v34, p2, v21

    add-int/lit8 v38, v4, -0x2

    aget-wide v39, p2, v38

    add-double v34, v34, v39

    add-int/lit8 v39, v1, -0x1

    move-wide/from16 v40, v11

    aget-wide v11, p2, v39

    neg-double v11, v11

    add-int/lit8 v42, v4, -0x1

    aget-wide v45, p2, v42

    sub-double v11, v11, v45

    aget-wide v45, p2, v21

    aget-wide v50, p2, v38

    sub-double v45, v45, v50

    move-wide/from16 v50, v9

    aget-wide v9, p2, v39

    neg-double v9, v9

    aget-wide v52, p2, v42

    add-double v9, v9, v52

    aget-wide v52, p2, v0

    aget-wide v54, p2, v5

    add-double v52, v52, v54

    add-int/lit8 v47, v0, 0x1

    aget-wide v54, p2, v47

    add-int/lit8 v56, v5, 0x1

    aget-wide v57, p2, v56

    add-double v54, v54, v57

    aget-wide v57, p2, v0

    aget-wide v59, p2, v5

    sub-double v57, v57, v59

    aget-wide v59, p2, v47

    aget-wide v61, p2, v56

    sub-double v59, v59, v61

    add-int/lit8 v61, v0, -0x2

    aget-wide v62, p2, v61

    add-int/lit8 v64, v5, -0x2

    aget-wide v65, p2, v64

    add-double v62, v62, v65

    add-int/lit8 v65, v0, -0x1

    aget-wide v66, p2, v65

    add-int/lit8 v68, v5, -0x1

    aget-wide v69, p2, v68

    add-double v66, v66, v69

    aget-wide v69, p2, v61

    aget-wide v71, p2, v64

    sub-double v69, v69, v71

    aget-wide v71, p2, v65

    aget-wide v73, p2, v68

    sub-double v71, v71, v73

    add-double v73, v6, v52

    aput-wide v73, p2, v1

    sub-double v73, v14, v54

    aput-wide v73, p2, v8

    add-double v73, v34, v62

    aput-wide v73, p2, v21

    sub-double v73, v11, v66

    aput-wide v73, p2, v39

    sub-double v6, v6, v52

    aput-wide v6, p2, v0

    add-double v14, v14, v54

    aput-wide v14, p2, v47

    sub-double v34, v34, v62

    aput-wide v34, p2, v61

    add-double v11, v11, v66

    aput-wide v11, p2, v65

    add-double v0, v28, v59

    add-double v6, v2, v57

    mul-double v11, v50, v0

    mul-double v14, v40, v6

    sub-double/2addr v11, v14

    aput-wide v11, p2, v4

    mul-double v6, v6, v50

    mul-double v11, v40, v0

    add-double/2addr v6, v11

    aput-wide v6, p2, v20

    add-double v0, v45, v71

    add-double v6, v9, v69

    mul-double v11, v30, v0

    mul-double v14, v22, v6

    sub-double/2addr v11, v14

    aput-wide v11, p2, v38

    mul-double v6, v6, v30

    mul-double v0, v0, v22

    add-double/2addr v6, v0

    aput-wide v6, p2, v42

    sub-double v28, v28, v59

    sub-double v2, v2, v57

    mul-double v0, v16, v28

    mul-double v14, v48, v2

    add-double/2addr v0, v14

    aput-wide v0, p2, v5

    mul-double v16, v16, v2

    mul-double v14, v48, v28

    sub-double v16, v16, v14

    aput-wide v16, p2, v56

    sub-double v45, v45, v71

    sub-double v9, v9, v69

    mul-double v7, v43, v45

    mul-double v0, v24, v9

    add-double/2addr v7, v0

    aput-wide v7, p2, v64

    mul-double v7, v43, v9

    mul-double v45, v45, v24

    sub-double v7, v7, v45

    aput-wide v7, p2, v68

    add-int/lit8 v13, v13, 0x4

    move/from16 v4, p1

    move-wide/from16 v2, v18

    move-wide/from16 v11, v22

    move-wide/from16 v14, v24

    move-wide/from16 v7, v26

    move-wide/from16 v9, v30

    move-wide/from16 v5, v32

    move/from16 v0, v36

    move/from16 v1, v37

    move-wide/from16 v16, v43

    goto/16 :goto_0

    :cond_0
    move/from16 v36, v0

    move/from16 v37, v1

    move-wide/from16 v32, v5

    move-wide/from16 v26, v7

    add-double v11, v11, v18

    mul-double v5, v32, v11

    add-double v9, v9, v18

    mul-double v0, v32, v9

    sub-double v14, v14, v18

    mul-double v7, v26, v14

    sub-double v16, v16, v18

    mul-double v3, v26, v16

    add-int v9, v36, v37

    add-int v10, v9, v37

    add-int v11, v10, v37

    aget-wide v12, p2, v2

    add-int/lit8 v14, v10, -0x2

    aget-wide v15, p2, v14

    add-double/2addr v12, v15

    add-int/lit8 v15, v36, -0x1

    move-wide/from16 p3, v3

    aget-wide v3, p2, v15

    neg-double v3, v3

    add-int/lit8 v16, v10, -0x1

    aget-wide v20, p2, v16

    sub-double v3, v3, v20

    aget-wide v20, p2, v2

    aget-wide v22, p2, v14

    sub-double v20, v20, v22

    move-wide/from16 v22, v7

    aget-wide v7, p2, v15

    neg-double v7, v7

    aget-wide v24, p2, v16

    add-double v7, v7, v24

    add-int/lit8 v17, v9, -0x2

    aget-wide v24, p2, v17

    add-int/lit8 v26, v11, -0x2

    aget-wide v27, p2, v26

    add-double v24, v24, v27

    add-int/lit8 v27, v9, -0x1

    aget-wide v28, p2, v27

    add-int/lit8 v30, v11, -0x1

    aget-wide v31, p2, v30

    add-double v28, v28, v31

    aget-wide v31, p2, v17

    aget-wide v33, p2, v26

    sub-double v31, v31, v33

    aget-wide v33, p2, v27

    aget-wide v37, p2, v30

    sub-double v33, v33, v37

    add-double v37, v12, v24

    aput-wide v37, p2, v2

    sub-double v37, v3, v28

    aput-wide v37, p2, v15

    sub-double v12, v12, v24

    aput-wide v12, p2, v17

    add-double v3, v3, v28

    aput-wide v3, p2, v27

    add-double v2, v20, v33

    add-double v12, v7, v31

    mul-double v24, v5, v2

    mul-double v27, v0, v12

    sub-double v24, v24, v27

    aput-wide v24, p2, v14

    mul-double/2addr v12, v5

    mul-double/2addr v2, v0

    add-double/2addr v12, v2

    aput-wide v12, p2, v16

    sub-double v20, v20, v33

    sub-double v7, v7, v31

    mul-double v2, v22, v20

    mul-double v12, p3, v7

    add-double/2addr v2, v12

    aput-wide v2, p2, v26

    mul-double v7, v7, v22

    mul-double v3, p3, v20

    sub-double/2addr v7, v3

    aput-wide v7, p2, v30

    aget-wide v2, p2, v36

    aget-wide v7, p2, v10

    add-double/2addr v2, v7

    add-int/lit8 v4, v36, 0x1

    aget-wide v7, p2, v4

    neg-double v7, v7

    add-int/lit8 v12, v10, 0x1

    aget-wide v13, p2, v12

    sub-double/2addr v7, v13

    aget-wide v13, p2, v36

    aget-wide v15, p2, v10

    sub-double/2addr v13, v15

    move-wide v15, v5

    aget-wide v5, p2, v4

    neg-double v5, v5

    aget-wide v20, p2, v12

    add-double v5, v5, v20

    aget-wide v20, p2, v9

    aget-wide v24, p2, v11

    add-double v20, v20, v24

    add-int/lit8 v17, v9, 0x1

    aget-wide v24, p2, v17

    add-int/lit8 v26, v11, 0x1

    aget-wide v27, p2, v26

    add-double v24, v24, v27

    aget-wide v27, p2, v9

    aget-wide v29, p2, v11

    sub-double v27, v27, v29

    aget-wide v29, p2, v17

    aget-wide v31, p2, v26

    sub-double v29, v29, v31

    add-double v31, v2, v20

    aput-wide v31, p2, v36

    sub-double v31, v7, v24

    aput-wide v31, p2, v4

    sub-double v2, v2, v20

    aput-wide v2, p2, v9

    add-double v7, v7, v24

    aput-wide v7, p2, v17

    add-double v2, v13, v29

    add-double v7, v5, v27

    sub-double v20, v2, v7

    mul-double v20, v20, v18

    aput-wide v20, p2, v10

    add-double/2addr v7, v2

    mul-double v2, v18, v7

    aput-wide v2, p2, v12

    sub-double v13, v13, v29

    sub-double v5, v5, v27

    move-wide/from16 v2, v18

    neg-double v2, v2

    add-double v7, v13, v5

    mul-double/2addr v7, v2

    aput-wide v7, p2, v11

    sub-double/2addr v5, v13

    mul-double/2addr v2, v5

    aput-wide v2, p2, v26

    add-int/lit8 v2, v36, 0x2

    aget-wide v3, p2, v2

    add-int/lit8 v5, v10, 0x2

    aget-wide v6, p2, v5

    add-double/2addr v3, v6

    add-int/lit8 v6, v36, 0x3

    aget-wide v7, p2, v6

    neg-double v7, v7

    add-int/lit8 v10, v10, 0x3

    aget-wide v12, p2, v10

    sub-double/2addr v7, v12

    aget-wide v12, p2, v2

    aget-wide v17, p2, v5

    sub-double v12, v12, v17

    move-wide/from16 v17, v15

    aget-wide v14, p2, v6

    neg-double v14, v14

    aget-wide v19, p2, v10

    add-double v14, v14, v19

    add-int/lit8 v16, v9, 0x2

    aget-wide v19, p2, v16

    add-int/lit8 v21, v11, 0x2

    aget-wide v24, p2, v21

    add-double v19, v19, v24

    add-int/lit8 v9, v9, 0x3

    aget-wide v24, p2, v9

    add-int/lit8 v11, v11, 0x3

    aget-wide v26, p2, v11

    add-double v24, v24, v26

    aget-wide v26, p2, v16

    aget-wide v28, p2, v21

    sub-double v26, v26, v28

    aget-wide v28, p2, v9

    aget-wide v30, p2, v11

    sub-double v28, v28, v30

    add-double v30, v3, v19

    aput-wide v30, p2, v2

    sub-double v30, v7, v24

    aput-wide v30, p2, v6

    sub-double v3, v3, v19

    aput-wide v3, p2, v16

    add-double v7, v7, v24

    aput-wide v7, p2, v9

    add-double v2, v12, v28

    add-double v6, v14, v26

    mul-double v8, v0, v2

    mul-double v19, v17, v6

    sub-double v8, v8, v19

    aput-wide v8, p2, v5

    mul-double/2addr v0, v6

    mul-double v5, v17, v2

    add-double/2addr v0, v5

    aput-wide v0, p2, v10

    sub-double v12, v12, v28

    sub-double v14, v14, v26

    mul-double v3, p3, v12

    mul-double v7, v22, v14

    add-double/2addr v3, v7

    aput-wide v3, p2, v21

    mul-double v3, p3, v14

    mul-double v7, v22, v12

    sub-double/2addr v3, v7

    aput-wide v3, p2, v11

    return-void
.end method

.method private b(I[D[III[D)V
    .locals 11

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    move-object/from16 v9, p6

    const/16 v0, 0x20

    if-le v7, v0, :cond_2

    shr-int/lit8 v10, v7, 0x2

    sub-int v1, p5, v10

    invoke-direct {p0, p1, p2, v9, v1}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b(I[D[DI)V

    const/16 v1, 0x200

    if-le v7, v1, :cond_0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, v10

    move-object v2, p2

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DII[D)V

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b(I[DII[D)V

    mul-int/lit8 v3, v10, 0x2

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DII[D)V

    mul-int/lit8 v3, v10, 0x3

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DII[D)V

    :goto_0
    move-object v0, p3

    move v1, p4

    goto :goto_1

    :cond_0
    if-le v10, v0, :cond_1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->c(I[DII[D)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->e(I[DII[D)V

    goto :goto_0

    :goto_1
    invoke-direct {p0, p1, p3, p4, p2}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b(I[II[D)V

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    if-le v7, v1, :cond_4

    const/4 v2, 0x0

    if-ne v7, v0, :cond_3

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, v2, v9, v0}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a([DI[DI)V

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b([D)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, p2, v2, v9, v2}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->c([DI[DI)V

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->d([D)V

    goto :goto_2

    :cond_4
    if-ne v7, v1, :cond_5

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->f([D)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    if-ne v7, v0, :cond_6

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->g([D)V

    :cond_6
    :goto_2
    return-void
.end method

.method private final b(I[II[D)V
    .locals 17

    add-int/lit8 v0, p3, 0x0

    const/4 v1, 0x0

    aput v1, p2, v0

    move/from16 v3, p1

    const/4 v2, 0x1

    :goto_0
    shl-int/lit8 v4, v2, 0x3

    if-ge v4, v3, :cond_1

    shr-int/lit8 v3, v3, 0x1

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_0

    add-int v5, p3, v2

    add-int/2addr v5, v4

    add-int v6, p3, v4

    aget v6, p2, v6

    add-int/2addr v6, v3

    aput v6, p2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v5, v2, 0x2

    if-ne v4, v3, :cond_3

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_5

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_2

    mul-int/lit8 v6, v4, 0x2

    add-int v7, p3, v3

    aget v7, p2, v7

    add-int/2addr v6, v7

    mul-int/lit8 v7, v3, 0x2

    add-int v8, p3, v4

    aget v8, p2, v8

    add-int/2addr v7, v8

    aget-wide v8, p4, v6

    add-int/lit8 v10, v6, 0x1

    aget-wide v11, p4, v10

    neg-double v11, v11

    aget-wide v13, p4, v7

    add-int/lit8 v15, v7, 0x1

    move/from16 p1, v2

    aget-wide v1, p4, v15

    neg-double v1, v1

    aput-wide v13, p4, v6

    aput-wide v1, p4, v10

    aput-wide v8, p4, v7

    aput-wide v11, p4, v15

    add-int/2addr v6, v5

    mul-int/lit8 v1, v5, 0x2

    add-int/2addr v7, v1

    aget-wide v8, p4, v6

    add-int/lit8 v2, v6, 0x1

    aget-wide v10, p4, v2

    neg-double v10, v10

    aget-wide v12, p4, v7

    add-int/lit8 v14, v7, 0x1

    move/from16 v16, v1

    aget-wide v0, p4, v14

    neg-double v0, v0

    aput-wide v12, p4, v6

    aput-wide v0, p4, v2

    aput-wide v8, p4, v7

    aput-wide v10, p4, v14

    add-int/2addr v6, v5

    sub-int/2addr v7, v5

    aget-wide v0, p4, v6

    add-int/lit8 v2, v6, 0x1

    aget-wide v8, p4, v2

    neg-double v8, v8

    aget-wide v10, p4, v7

    add-int/lit8 v12, v7, 0x1

    aget-wide v13, p4, v12

    neg-double v13, v13

    aput-wide v10, p4, v6

    aput-wide v13, p4, v2

    aput-wide v0, p4, v7

    aput-wide v8, p4, v12

    add-int/2addr v6, v5

    add-int v7, v7, v16

    aget-wide v0, p4, v6

    add-int/lit8 v2, v6, 0x1

    aget-wide v8, p4, v2

    neg-double v8, v8

    aget-wide v10, p4, v7

    add-int/lit8 v12, v7, 0x1

    aget-wide v13, p4, v12

    neg-double v13, v13

    aput-wide v10, p4, v6

    aput-wide v13, p4, v2

    aput-wide v0, p4, v7

    aput-wide v8, p4, v12

    add-int/lit8 v4, v4, 0x1

    move/from16 v2, p1

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    move/from16 p1, v2

    mul-int/lit8 v0, v3, 0x2

    add-int v1, p3, v3

    aget v1, p2, v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    aget-wide v6, p4, v1

    neg-double v6, v6

    aput-wide v6, p4, v1

    add-int/2addr v0, v5

    add-int v1, v0, v5

    aget-wide v6, p4, v0

    add-int/lit8 v2, v0, 0x1

    aget-wide v8, p4, v2

    neg-double v8, v8

    aget-wide v10, p4, v1

    add-int/lit8 v4, v1, 0x1

    aget-wide v12, p4, v4

    neg-double v12, v12

    aput-wide v10, p4, v0

    aput-wide v12, p4, v2

    aput-wide v6, p4, v1

    aput-wide v8, p4, v4

    add-int/2addr v1, v5

    const/4 v0, 0x1

    add-int/2addr v1, v0

    aget-wide v6, p4, v1

    neg-double v6, v6

    aput-wide v6, p4, v1

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, p1

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_3
    move/from16 p1, v2

    const/4 v0, 0x1

    aget-wide v1, p4, v0

    neg-double v1, v1

    aput-wide v1, p4, v0

    add-int/lit8 v0, v5, 0x1

    aget-wide v1, p4, v0

    neg-double v1, v1

    aput-wide v1, p4, v0

    move/from16 v0, p1

    const/4 v1, 0x1

    :goto_4
    if-ge v1, v0, :cond_5

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_4

    mul-int/lit8 v3, v2, 0x2

    add-int v4, p3, v1

    aget v4, p2, v4

    add-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x2

    add-int v6, p3, v2

    aget v6, p2, v6

    add-int/2addr v4, v6

    aget-wide v6, p4, v3

    add-int/lit8 v8, v3, 0x1

    aget-wide v9, p4, v8

    neg-double v9, v9

    aget-wide v11, p4, v4

    add-int/lit8 v13, v4, 0x1

    aget-wide v14, p4, v13

    neg-double v14, v14

    aput-wide v11, p4, v3

    aput-wide v14, p4, v8

    aput-wide v6, p4, v4

    aput-wide v9, p4, v13

    add-int/2addr v3, v5

    add-int/2addr v4, v5

    aget-wide v6, p4, v3

    add-int/lit8 v8, v3, 0x1

    aget-wide v9, p4, v8

    neg-double v9, v9

    aget-wide v11, p4, v4

    add-int/lit8 v13, v4, 0x1

    aget-wide v14, p4, v13

    neg-double v14, v14

    aput-wide v11, p4, v3

    aput-wide v14, p4, v8

    aput-wide v6, p4, v4

    aput-wide v9, p4, v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    mul-int/lit8 v2, v1, 0x2

    add-int v3, p3, v1

    aget v3, p2, v3

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x1

    aget-wide v6, p4, v3

    neg-double v6, v6

    aput-wide v6, p4, v3

    add-int/2addr v2, v5

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget-wide v6, p4, v2

    neg-double v6, v6

    aput-wide v6, p4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private b([D)V
    .locals 75

    const/4 v0, 0x2

    aget-wide v1, p1, v0

    const/4 v3, 0x3

    aget-wide v4, p1, v3

    const/4 v6, 0x4

    aget-wide v7, p1, v6

    const/4 v9, 0x5

    aget-wide v10, p1, v9

    const/4 v12, 0x6

    aget-wide v13, p1, v12

    const/4 v15, 0x7

    aget-wide v16, p1, v15

    const/16 v18, 0x8

    aget-wide v19, p1, v18

    const/16 v21, 0x9

    aget-wide v22, p1, v21

    const/16 v24, 0xa

    aget-wide v25, p1, v24

    const/16 v27, 0xb

    aget-wide v28, p1, v27

    const/16 v30, 0xc

    aget-wide v31, p1, v30

    const/16 v33, 0xd

    aget-wide v34, p1, v33

    const/16 v36, 0xe

    aget-wide v37, p1, v36

    const/16 v39, 0xf

    aget-wide v40, p1, v39

    const/16 v42, 0x10

    aget-wide v43, p1, v42

    const/16 v45, 0x11

    aget-wide v45, p1, v45

    const/16 v47, 0x12

    aget-wide v47, p1, v47

    const/16 v49, 0x13

    aget-wide v49, p1, v49

    const/16 v51, 0x14

    aget-wide v51, p1, v51

    const/16 v53, 0x15

    aget-wide v53, p1, v53

    const/16 v55, 0x16

    aget-wide v55, p1, v55

    const/16 v57, 0x17

    aget-wide v57, p1, v57

    const/16 v59, 0x18

    aget-wide v59, p1, v59

    const/16 v61, 0x19

    aget-wide v61, p1, v61

    const/16 v63, 0x1a

    aget-wide v63, p1, v63

    const/16 v65, 0x1b

    aget-wide v65, p1, v65

    const/16 v67, 0x1c

    aget-wide v67, p1, v67

    const/16 v69, 0x1d

    aget-wide v69, p1, v69

    const/16 v71, 0x1e

    aget-wide v71, p1, v71

    const/16 v73, 0x1f

    aget-wide v73, p1, v73

    aput-wide v71, p1, v0

    aput-wide v73, p1, v3

    aput-wide v37, p1, v6

    aput-wide v40, p1, v9

    aput-wide v55, p1, v12

    aput-wide v57, p1, v15

    aput-wide v13, p1, v18

    aput-wide v16, p1, v21

    aput-wide v63, p1, v24

    aput-wide v65, p1, v27

    aput-wide v25, p1, v30

    aput-wide v28, p1, v33

    aput-wide v47, p1, v36

    aput-wide v49, p1, v39

    aput-wide v1, p1, v42

    const/16 v0, 0x11

    aput-wide v4, p1, v0

    const/16 v0, 0x12

    aput-wide v67, p1, v0

    const/16 v0, 0x13

    aput-wide v69, p1, v0

    const/16 v0, 0x14

    aput-wide v31, p1, v0

    const/16 v0, 0x15

    aput-wide v34, p1, v0

    const/16 v0, 0x16

    aput-wide v51, p1, v0

    const/16 v0, 0x17

    aput-wide v53, p1, v0

    const/16 v0, 0x18

    aput-wide v7, p1, v0

    const/16 v0, 0x19

    aput-wide v10, p1, v0

    const/16 v0, 0x1a

    aput-wide v59, p1, v0

    const/16 v0, 0x1b

    aput-wide v61, p1, v0

    const/16 v0, 0x1c

    aput-wide v19, p1, v0

    const/16 v0, 0x1d

    aput-wide v22, p1, v0

    const/16 v0, 0x1e

    aput-wide v43, p1, v0

    const/16 v0, 0x1f

    aput-wide v45, p1, v0

    return-void
.end method

.method private b([DI[DI)V
    .locals 108

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v2, p4, 0x4

    aget-wide v2, p3, v2

    add-int/lit8 v4, p4, 0x5

    aget-wide v4, p3, v4

    add-int/lit8 v6, p4, 0x6

    aget-wide v6, p3, v6

    add-int/lit8 v8, p4, 0x7

    aget-wide v8, p3, v8

    add-int/lit8 v10, p4, 0x8

    aget-wide v10, p3, v10

    add-int/lit8 v12, p4, 0x9

    aget-wide v12, p3, v12

    add-int/lit8 v14, p2, 0x0

    aget-wide v15, p1, v14

    add-int/lit8 v17, p2, 0x11

    aget-wide v18, p1, v17

    sub-double v15, v15, v18

    add-int/lit8 v18, p2, 0x1

    aget-wide v19, p1, v18

    add-int/lit8 v21, p2, 0x10

    aget-wide v22, p1, v21

    add-double v19, v19, v22

    add-int/lit8 v22, p2, 0x8

    aget-wide v23, p1, v22

    add-int/lit8 v25, p2, 0x19

    aget-wide v26, p1, v25

    sub-double v23, v23, v26

    add-int/lit8 v26, p2, 0x9

    aget-wide v27, p1, v26

    add-int/lit8 v29, p2, 0x18

    aget-wide v30, p1, v29

    add-double v27, v27, v30

    sub-double v30, v23, v27

    mul-double v30, v30, v0

    add-double v27, v27, v23

    mul-double v27, v27, v0

    add-double v23, v15, v30

    add-double v32, v19, v27

    sub-double v15, v15, v30

    sub-double v19, v19, v27

    aget-wide v27, p1, v14

    aget-wide v30, p1, v17

    add-double v27, v27, v30

    aget-wide v30, p1, v18

    aget-wide v34, p1, v21

    sub-double v30, v30, v34

    aget-wide v34, p1, v22

    aget-wide v36, p1, v25

    add-double v34, v34, v36

    aget-wide v36, p1, v26

    aget-wide v38, p1, v29

    sub-double v36, v36, v38

    sub-double v38, v34, v36

    mul-double v38, v38, v0

    add-double v36, v36, v34

    mul-double v36, v36, v0

    sub-double v34, v27, v36

    add-double v40, v30, v38

    add-double v27, v27, v36

    sub-double v30, v30, v38

    add-int/lit8 v36, p2, 0x2

    aget-wide v37, p1, v36

    add-int/lit8 v39, p2, 0x13

    aget-wide v42, p1, v39

    sub-double v37, v37, v42

    add-int/lit8 v42, p2, 0x3

    aget-wide v43, p1, v42

    add-int/lit8 v45, p2, 0x12

    aget-wide v46, p1, v45

    add-double v43, v43, v46

    mul-double v46, v2, v37

    mul-double v48, v4, v43

    sub-double v46, v46, v48

    mul-double v43, v43, v2

    mul-double v37, v37, v4

    add-double v43, v43, v37

    add-int/lit8 v37, p2, 0xa

    aget-wide v48, p1, v37

    add-int/lit8 v38, p2, 0x1b

    aget-wide v50, p1, v38

    sub-double v48, v48, v50

    add-int/lit8 v50, p2, 0xb

    aget-wide v51, p1, v50

    add-int/lit8 v53, p2, 0x1a

    aget-wide v54, p1, v53

    add-double v51, v51, v54

    mul-double v54, v8, v48

    mul-double v56, v6, v51

    sub-double v54, v54, v56

    mul-double v51, v51, v8

    mul-double v48, v48, v6

    add-double v51, v51, v48

    add-double v48, v46, v54

    add-double v56, v43, v51

    sub-double v46, v46, v54

    sub-double v43, v43, v51

    aget-wide v51, p1, v36

    aget-wide v54, p1, v39

    add-double v51, v51, v54

    aget-wide v54, p1, v42

    aget-wide v58, p1, v45

    sub-double v54, v54, v58

    mul-double v58, v6, v51

    mul-double v60, v8, v54

    sub-double v58, v58, v60

    mul-double v54, v54, v6

    mul-double v51, v51, v8

    add-double v54, v54, v51

    aget-wide v51, p1, v37

    aget-wide v60, p1, v38

    add-double v51, v51, v60

    aget-wide v60, p1, v50

    aget-wide v62, p1, v53

    sub-double v60, v60, v62

    mul-double v62, v2, v51

    mul-double v64, v4, v60

    add-double v62, v62, v64

    mul-double v60, v60, v2

    mul-double v51, v51, v4

    sub-double v60, v60, v51

    sub-double v51, v58, v62

    sub-double v64, v54, v60

    add-double v58, v58, v62

    add-double v54, v54, v60

    add-int/lit8 v60, p2, 0x4

    aget-wide v61, p1, v60

    add-int/lit8 v63, p2, 0x15

    aget-wide v66, p1, v63

    sub-double v61, v61, v66

    add-int/lit8 v66, p2, 0x5

    aget-wide v67, p1, v66

    add-int/lit8 v69, p2, 0x14

    aget-wide v70, p1, v69

    add-double v67, v67, v70

    mul-double v70, v10, v61

    mul-double v72, v12, v67

    sub-double v70, v70, v72

    mul-double v67, v67, v10

    mul-double v61, v61, v12

    add-double v67, v67, v61

    add-int/lit8 v61, p2, 0xc

    aget-wide v72, p1, v61

    add-int/lit8 v62, p2, 0x1d

    aget-wide v74, p1, v62

    sub-double v72, v72, v74

    add-int/lit8 v74, p2, 0xd

    aget-wide v75, p1, v74

    add-int/lit8 v77, p2, 0x1c

    aget-wide v78, p1, v77

    add-double v75, v75, v78

    mul-double v78, v12, v72

    mul-double v80, v10, v75

    sub-double v78, v78, v80

    mul-double v75, v75, v12

    mul-double v72, v72, v10

    add-double v75, v75, v72

    add-double v72, v70, v78

    add-double v80, v67, v75

    sub-double v70, v70, v78

    sub-double v67, v67, v75

    aget-wide v75, p1, v60

    aget-wide v78, p1, v63

    add-double v75, v75, v78

    aget-wide v78, p1, v66

    aget-wide v82, p1, v69

    sub-double v78, v78, v82

    mul-double v82, v12, v75

    mul-double v84, v10, v78

    sub-double v82, v82, v84

    mul-double v78, v78, v12

    mul-double v75, v75, v10

    add-double v78, v78, v75

    aget-wide v75, p1, v61

    aget-wide v84, p1, v62

    add-double v75, v75, v84

    aget-wide v84, p1, v74

    aget-wide v86, p1, v77

    sub-double v84, v84, v86

    mul-double v86, v10, v75

    mul-double v88, v12, v84

    sub-double v86, v86, v88

    mul-double v10, v10, v84

    mul-double v12, v12, v75

    add-double/2addr v10, v12

    sub-double v12, v82, v86

    sub-double v75, v78, v10

    add-double v82, v82, v86

    add-double v78, v78, v10

    add-int/lit8 v10, p2, 0x6

    aget-wide v84, p1, v10

    add-int/lit8 v11, p2, 0x17

    aget-wide v86, p1, v11

    sub-double v84, v84, v86

    add-int/lit8 v86, p2, 0x7

    aget-wide v87, p1, v86

    add-int/lit8 v89, p2, 0x16

    aget-wide v90, p1, v89

    add-double v87, v87, v90

    mul-double v90, v6, v84

    mul-double v92, v8, v87

    sub-double v90, v90, v92

    mul-double v87, v87, v6

    mul-double v84, v84, v8

    add-double v87, v87, v84

    add-int/lit8 v84, p2, 0xe

    aget-wide v92, p1, v84

    add-int/lit8 v85, p2, 0x1f

    aget-wide v94, p1, v85

    sub-double v92, v92, v94

    add-int/lit8 v94, p2, 0xf

    aget-wide v95, p1, v94

    add-int/lit8 v97, p2, 0x1e

    aget-wide v98, p1, v97

    add-double v95, v95, v98

    mul-double v98, v4, v92

    mul-double v100, v2, v95

    sub-double v98, v98, v100

    mul-double v95, v95, v4

    mul-double v92, v92, v2

    add-double v95, v95, v92

    add-double v92, v90, v98

    add-double v100, v87, v95

    sub-double v90, v90, v98

    sub-double v87, v87, v95

    aget-wide v95, p1, v10

    aget-wide v98, p1, v11

    add-double v95, v95, v98

    aget-wide v98, p1, v86

    aget-wide v102, p1, v89

    sub-double v98, v98, v102

    mul-double v102, v4, v95

    mul-double v104, v2, v98

    add-double v102, v102, v104

    mul-double v4, v4, v98

    mul-double v2, v2, v95

    sub-double/2addr v4, v2

    aget-wide v2, p1, v84

    aget-wide v95, p1, v85

    add-double v2, v2, v95

    aget-wide v95, p1, v94

    aget-wide v98, p1, v97

    sub-double v95, v95, v98

    mul-double v98, v8, v2

    mul-double v104, v6, v95

    sub-double v98, v98, v104

    mul-double v8, v8, v95

    mul-double/2addr v6, v2

    add-double/2addr v8, v6

    add-double v2, v102, v98

    add-double v6, v4, v8

    sub-double v102, v102, v98

    sub-double/2addr v4, v8

    add-double v8, v23, v72

    add-double v95, v32, v80

    add-double v98, v48, v92

    add-double v104, v56, v100

    add-double v106, v8, v98

    aput-wide v106, p1, v14

    add-double v106, v95, v104

    aput-wide v106, p1, v18

    sub-double v8, v8, v98

    aput-wide v8, p1, v36

    sub-double v95, v95, v104

    aput-wide v95, p1, v42

    sub-double v23, v23, v72

    sub-double v32, v32, v80

    sub-double v48, v48, v92

    sub-double v56, v56, v100

    sub-double v8, v23, v56

    aput-wide v8, p1, v60

    add-double v8, v32, v48

    aput-wide v8, p1, v66

    add-double v23, v23, v56

    aput-wide v23, p1, v10

    sub-double v32, v32, v48

    aput-wide v32, p1, v86

    sub-double v8, v15, v67

    add-double v23, v19, v70

    sub-double v32, v46, v87

    add-double v48, v43, v90

    sub-double v56, v32, v48

    mul-double v56, v56, v0

    add-double v48, v48, v32

    mul-double v48, v48, v0

    add-double v32, v8, v56

    aput-wide v32, p1, v22

    add-double v32, v23, v48

    aput-wide v32, p1, v26

    sub-double v8, v8, v56

    aput-wide v8, p1, v37

    sub-double v23, v23, v48

    aput-wide v23, p1, v50

    add-double v15, v15, v67

    sub-double v19, v19, v70

    add-double v46, v46, v87

    sub-double v43, v43, v90

    sub-double v8, v46, v43

    mul-double/2addr v8, v0

    add-double v43, v43, v46

    mul-double v43, v43, v0

    sub-double v22, v15, v43

    aput-wide v22, p1, v61

    add-double v22, v19, v8

    aput-wide v22, p1, v74

    add-double v15, v15, v43

    aput-wide v15, p1, v84

    sub-double v19, v19, v8

    aput-wide v19, p1, v94

    add-double v8, v34, v12

    add-double v14, v40, v75

    sub-double v18, v51, v2

    sub-double v22, v64, v6

    add-double v32, v8, v18

    aput-wide v32, p1, v21

    add-double v20, v14, v22

    aput-wide v20, p1, v17

    sub-double v8, v8, v18

    aput-wide v8, p1, v45

    sub-double v14, v14, v22

    aput-wide v14, p1, v39

    sub-double v34, v34, v12

    sub-double v40, v40, v75

    add-double v51, v51, v2

    add-double v64, v64, v6

    sub-double v2, v34, v64

    aput-wide v2, p1, v69

    add-double v2, v40, v51

    aput-wide v2, p1, v63

    add-double v34, v34, v64

    aput-wide v34, p1, v89

    sub-double v40, v40, v51

    aput-wide v40, p1, v11

    sub-double v2, v27, v78

    add-double v6, v30, v82

    add-double v8, v58, v4

    sub-double v10, v54, v102

    sub-double v12, v8, v10

    mul-double/2addr v12, v0

    add-double/2addr v10, v8

    mul-double/2addr v10, v0

    add-double v8, v2, v12

    aput-wide v8, p1, v29

    add-double v8, v6, v10

    aput-wide v8, p1, v25

    sub-double/2addr v2, v12

    aput-wide v2, p1, v53

    sub-double/2addr v6, v10

    aput-wide v6, p1, v38

    add-double v27, v27, v78

    sub-double v30, v30, v82

    sub-double v58, v58, v4

    add-double v54, v54, v102

    sub-double v2, v58, v54

    mul-double/2addr v2, v0

    add-double v54, v54, v58

    mul-double v0, v0, v54

    sub-double v4, v27, v0

    aput-wide v4, p1, v77

    add-double v4, v30, v2

    aput-wide v4, p1, v62

    add-double v27, v27, v0

    aput-wide v27, p1, v97

    sub-double v30, v30, v2

    aput-wide v30, p1, v85

    return-void
.end method

.method private c(I[DII[D)V
    .locals 13

    move v0, p1

    shr-int/lit8 v1, v0, 0x2

    move v8, v1

    :goto_0
    const/16 v1, 0x80

    if-le v8, v1, :cond_2

    move v1, v8

    :goto_1
    if-ge v1, v0, :cond_1

    sub-int v2, v1, v8

    move v9, v2

    :goto_2
    if-ge v9, v0, :cond_0

    add-int v5, p3, v9

    shr-int/lit8 v2, v8, 0x1

    sub-int v10, p4, v2

    move-object v2, p0

    move v3, v8

    move-object v4, p2

    move-object/from16 v6, p5

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DI[DI)V

    add-int v2, p3, v1

    add-int v5, v2, v9

    sub-int v7, p4, v8

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b(I[DI[DI)V

    mul-int/lit8 v2, v1, 0x2

    add-int v2, p3, v2

    add-int v5, v2, v9

    move-object v2, p0

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DI[DI)V

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v9, v2

    goto :goto_2

    :cond_0
    shl-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    add-int v1, p3, v0

    sub-int v5, v1, v8

    shr-int/lit8 v1, v8, 0x1

    sub-int v7, p4, v1

    move-object v2, p0

    move v3, v8

    move-object v4, p2

    move-object/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DI[DI)V

    shr-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_2
    move v9, v8

    :goto_3
    if-ge v9, v0, :cond_4

    sub-int v1, v9, v8

    move v10, v1

    :goto_4
    if-ge v10, v0, :cond_3

    add-int v11, p3, v10

    shr-int/lit8 v1, v8, 0x1

    sub-int v12, p4, v1

    move-object v2, p0

    move v3, v8

    move-object v4, p2

    move v5, v11

    move-object/from16 v6, p5

    move v7, v12

    invoke-direct/range {v2 .. v7}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DI[DI)V

    move-object v1, p0

    move v2, v8

    move-object v3, p2

    move v4, v11

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->e(I[DII[D)V

    add-int v1, p3, v9

    add-int v11, v1, v10

    sub-int v7, p4, v8

    move-object v2, p0

    move v3, v8

    move-object v4, p2

    move v5, v11

    invoke-direct/range {v2 .. v7}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b(I[DI[DI)V

    move-object v1, p0

    move v2, v8

    move-object v3, p2

    move v4, v11

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->f(I[DII[D)V

    mul-int/lit8 v1, v9, 0x2

    add-int v1, p3, v1

    add-int v11, v1, v10

    move-object v2, p0

    move v3, v8

    move-object v4, p2

    move v5, v11

    move v7, v12

    invoke-direct/range {v2 .. v7}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DI[DI)V

    move-object v1, p0

    move v2, v8

    move-object v3, p2

    move v4, v11

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->e(I[DII[D)V

    mul-int/lit8 v1, v9, 0x4

    add-int/2addr v10, v1

    goto :goto_4

    :cond_3
    shl-int/lit8 v9, v9, 0x2

    goto :goto_3

    :cond_4
    add-int v0, p3, v0

    sub-int v9, v0, v8

    shr-int/lit8 v0, v8, 0x1

    sub-int v7, p4, v0

    move-object v2, p0

    move v3, v8

    move-object v4, p2

    move v5, v9

    move-object/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DI[DI)V

    move-object v0, p0

    move v1, v8

    move-object v2, p2

    move v3, v9

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->e(I[DII[D)V

    return-void
.end method

.method private c(I[DI[DI)V
    .locals 19

    shr-int/lit8 v0, p1, 0x1

    mul-int/lit8 v1, p3, 0x2

    div-int/2addr v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sub-int v4, p1, v2

    add-int/2addr v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-int v7, p5, p3

    sub-int/2addr v7, v3

    aget-wide v7, p4, v7

    sub-double/2addr v5, v7

    add-int v7, p5, v3

    aget-wide v7, p4, v7

    aget-wide v9, p2, v2

    aget-wide v11, p2, v4

    sub-double/2addr v9, v11

    add-int/lit8 v11, v2, 0x1

    aget-wide v12, p2, v11

    add-int/lit8 v14, v4, 0x1

    aget-wide v15, p2, v14

    add-double/2addr v12, v15

    mul-double v15, v5, v9

    mul-double v17, v7, v12

    sub-double v15, v15, v17

    mul-double/2addr v5, v12

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aget-wide v7, p2, v2

    sub-double/2addr v7, v15

    aput-wide v7, p2, v2

    aget-wide v7, p2, v11

    sub-double/2addr v7, v5

    aput-wide v7, p2, v11

    aget-wide v7, p2, v4

    add-double/2addr v7, v15

    aput-wide v7, p2, v4

    aget-wide v7, p2, v14

    sub-double/2addr v7, v5

    aput-wide v7, p2, v14

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c([D)V
    .locals 24

    const/4 v0, 0x2

    aget-wide v1, p1, v0

    const/4 v3, 0x3

    aget-wide v4, p1, v3

    const/4 v6, 0x6

    aget-wide v7, p1, v6

    const/4 v9, 0x7

    aget-wide v10, p1, v9

    const/16 v12, 0x8

    aget-wide v13, p1, v12

    const/16 v15, 0x9

    aget-wide v16, p1, v15

    const/16 v18, 0xc

    aget-wide v19, p1, v18

    const/16 v21, 0xd

    aget-wide v22, p1, v21

    aput-wide v13, p1, v0

    aput-wide v16, p1, v3

    aput-wide v19, p1, v6

    aput-wide v22, p1, v9

    aput-wide v1, p1, v12

    aput-wide v4, p1, v15

    aput-wide v7, p1, v18

    aput-wide v10, p1, v21

    return-void
.end method

.method private c([DI[DI)V
    .locals 54

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v2, p2, 0x0

    aget-wide v3, p1, v2

    add-int/lit8 v5, p2, 0x8

    aget-wide v6, p1, v5

    add-double/2addr v3, v6

    add-int/lit8 v6, p2, 0x1

    aget-wide v7, p1, v6

    add-int/lit8 v9, p2, 0x9

    aget-wide v10, p1, v9

    add-double/2addr v7, v10

    aget-wide v10, p1, v2

    aget-wide v12, p1, v5

    sub-double/2addr v10, v12

    aget-wide v12, p1, v6

    aget-wide v14, p1, v9

    sub-double/2addr v12, v14

    add-int/lit8 v14, p2, 0x4

    aget-wide v15, p1, v14

    add-int/lit8 v17, p2, 0xc

    aget-wide v18, p1, v17

    add-double v15, v15, v18

    add-int/lit8 v18, p2, 0x5

    aget-wide v19, p1, v18

    add-int/lit8 v21, p2, 0xd

    aget-wide v22, p1, v21

    add-double v19, v19, v22

    aget-wide v22, p1, v14

    aget-wide v24, p1, v17

    sub-double v22, v22, v24

    aget-wide v24, p1, v18

    aget-wide v26, p1, v21

    sub-double v24, v24, v26

    add-double v26, v3, v15

    add-double v28, v7, v19

    sub-double/2addr v3, v15

    sub-double v7, v7, v19

    sub-double v15, v10, v24

    add-double v19, v12, v22

    add-double v10, v10, v24

    sub-double v12, v12, v22

    add-int/lit8 v22, p2, 0x2

    aget-wide v23, p1, v22

    add-int/lit8 v25, p2, 0xa

    aget-wide v30, p1, v25

    add-double v23, v23, v30

    add-int/lit8 v30, p2, 0x3

    aget-wide v31, p1, v30

    add-int/lit8 v33, p2, 0xb

    aget-wide v34, p1, v33

    add-double v31, v31, v34

    aget-wide v34, p1, v22

    aget-wide v36, p1, v25

    sub-double v34, v34, v36

    aget-wide v36, p1, v30

    aget-wide v38, p1, v33

    sub-double v36, v36, v38

    add-int/lit8 v38, p2, 0x6

    aget-wide v39, p1, v38

    add-int/lit8 v41, p2, 0xe

    aget-wide v42, p1, v41

    add-double v39, v39, v42

    add-int/lit8 v42, p2, 0x7

    aget-wide v43, p1, v42

    add-int/lit8 v45, p2, 0xf

    aget-wide v46, p1, v45

    add-double v43, v43, v46

    aget-wide v46, p1, v38

    aget-wide v48, p1, v41

    sub-double v46, v46, v48

    aget-wide v48, p1, v42

    aget-wide v50, p1, v45

    sub-double v48, v48, v50

    add-double v50, v23, v39

    add-double v52, v31, v43

    sub-double v23, v23, v39

    sub-double v31, v31, v43

    sub-double v39, v34, v48

    add-double v43, v36, v46

    add-double v34, v34, v48

    sub-double v36, v36, v46

    sub-double v46, v39, v43

    mul-double v46, v46, v0

    add-double v39, v39, v43

    mul-double v39, v39, v0

    sub-double v43, v34, v36

    mul-double v43, v43, v0

    add-double v34, v34, v36

    mul-double v0, v0, v34

    add-double v34, v15, v46

    aput-wide v34, p1, v5

    add-double v34, v19, v39

    aput-wide v34, p1, v9

    sub-double v15, v15, v46

    aput-wide v15, p1, v25

    sub-double v19, v19, v39

    aput-wide v19, p1, v33

    sub-double v15, v10, v0

    aput-wide v15, p1, v17

    add-double v15, v12, v43

    aput-wide v15, p1, v21

    add-double/2addr v10, v0

    aput-wide v10, p1, v41

    sub-double v12, v12, v43

    aput-wide v12, p1, v45

    add-double v0, v26, v50

    aput-wide v0, p1, v2

    add-double v0, v28, v52

    aput-wide v0, p1, v6

    sub-double v26, v26, v50

    aput-wide v26, p1, v22

    sub-double v28, v28, v52

    aput-wide v28, p1, v30

    sub-double v0, v3, v31

    aput-wide v0, p1, v14

    add-double v0, v7, v23

    aput-wide v0, p1, v18

    add-double v3, v3, v31

    aput-wide v3, p1, v38

    sub-double v7, v7, v23

    aput-wide v7, p1, v42

    return-void
.end method

.method private d(I[DII[D)V
    .locals 17

    shr-int/lit8 v6, p1, 0x1

    shr-int/lit8 v0, p1, 0x2

    move v13, v0

    :goto_0
    const/16 v0, 0x80

    if-le v13, v0, :cond_3

    move v0, v13

    :goto_1
    if-ge v0, v6, :cond_2

    sub-int v1, v0, v13

    :goto_2
    if-ge v1, v6, :cond_0

    add-int v10, p3, v1

    shr-int/lit8 v2, v13, 0x1

    sub-int v2, p4, v2

    move-object/from16 v7, p0

    move v8, v13

    move-object/from16 v9, p2

    move-object/from16 v11, p5

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DI[DI)V

    add-int v3, p3, v6

    add-int v10, v3, v1

    invoke-direct/range {v7 .. v12}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DI[DI)V

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    goto :goto_2

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    sub-int/2addr v1, v13

    :goto_3
    if-ge v1, v6, :cond_1

    add-int v10, p3, v1

    sub-int v2, p4, v13

    move-object/from16 v7, p0

    move v8, v13

    move-object/from16 v9, p2

    move-object/from16 v11, p5

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b(I[DI[DI)V

    add-int v3, p3, v6

    add-int v10, v3, v1

    invoke-direct/range {v7 .. v12}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b(I[DI[DI)V

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    goto :goto_3

    :cond_1
    shl-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    shr-int/lit8 v13, v13, 0x2

    goto :goto_0

    :cond_3
    move v14, v13

    :goto_4
    if-ge v14, v6, :cond_6

    sub-int v0, v14, v13

    move v15, v0

    :goto_5
    if-ge v15, v6, :cond_4

    add-int v3, p3, v15

    shr-int/lit8 v0, v13, 0x1

    sub-int v16, p4, v0

    move-object/from16 v7, p0

    move v8, v13

    move-object/from16 v9, p2

    move v10, v3

    move-object/from16 v11, p5

    move/from16 v12, v16

    invoke-direct/range {v7 .. v12}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DI[DI)V

    move-object/from16 v0, p0

    move v1, v13

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->e(I[DII[D)V

    add-int v0, p3, v6

    add-int v3, v0, v15

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[DI[DI)V

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->e(I[DII[D)V

    mul-int/lit8 v0, v14, 0x2

    add-int/2addr v15, v0

    goto :goto_5

    :cond_4
    mul-int/lit8 v0, v14, 0x2

    sub-int/2addr v0, v13

    move v15, v0

    :goto_6
    if-ge v15, v6, :cond_5

    add-int v3, p3, v15

    sub-int v16, p4, v13

    move-object/from16 v7, p0

    move v8, v13

    move-object/from16 v9, p2

    move v10, v3

    move-object/from16 v11, p5

    move/from16 v12, v16

    invoke-direct/range {v7 .. v12}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b(I[DI[DI)V

    move-object/from16 v0, p0

    move v1, v13

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->f(I[DII[D)V

    add-int v0, p3, v6

    add-int v3, v0, v15

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b(I[DI[DI)V

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->f(I[DII[D)V

    mul-int/lit8 v0, v14, 0x4

    add-int/2addr v15, v0

    goto :goto_6

    :cond_5
    shl-int/lit8 v14, v14, 0x2

    goto :goto_4

    :cond_6
    return-void
.end method

.method private d(I[DI[DI)V
    .locals 19

    shr-int/lit8 v0, p1, 0x1

    mul-int/lit8 v1, p3, 0x2

    div-int/2addr v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sub-int v4, p1, v2

    add-int/2addr v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-int v7, p5, p3

    sub-int/2addr v7, v3

    aget-wide v7, p4, v7

    sub-double/2addr v5, v7

    add-int v7, p5, v3

    aget-wide v7, p4, v7

    aget-wide v9, p2, v2

    aget-wide v11, p2, v4

    sub-double/2addr v9, v11

    add-int/lit8 v11, v2, 0x1

    aget-wide v12, p2, v11

    add-int/lit8 v14, v4, 0x1

    aget-wide v15, p2, v14

    add-double/2addr v12, v15

    mul-double v15, v5, v9

    mul-double v17, v7, v12

    add-double v15, v15, v17

    mul-double/2addr v5, v12

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    aget-wide v7, p2, v2

    sub-double/2addr v7, v15

    aput-wide v7, p2, v2

    aget-wide v7, p2, v11

    sub-double/2addr v7, v5

    aput-wide v7, p2, v11

    aget-wide v7, p2, v4

    add-double/2addr v7, v15

    aput-wide v7, p2, v4

    aget-wide v7, p2, v14

    sub-double/2addr v7, v5

    aput-wide v7, p2, v14

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d([D)V
    .locals 42

    const/4 v0, 0x2

    aget-wide v1, p1, v0

    const/4 v3, 0x3

    aget-wide v4, p1, v3

    const/4 v6, 0x4

    aget-wide v7, p1, v6

    const/4 v9, 0x5

    aget-wide v10, p1, v9

    const/4 v12, 0x6

    aget-wide v13, p1, v12

    const/4 v15, 0x7

    aget-wide v16, p1, v15

    const/16 v18, 0x8

    aget-wide v19, p1, v18

    const/16 v21, 0x9

    aget-wide v22, p1, v21

    const/16 v24, 0xa

    aget-wide v25, p1, v24

    const/16 v27, 0xb

    aget-wide v28, p1, v27

    const/16 v30, 0xc

    aget-wide v31, p1, v30

    const/16 v33, 0xd

    aget-wide v34, p1, v33

    const/16 v36, 0xe

    aget-wide v37, p1, v36

    const/16 v39, 0xf

    aget-wide v40, p1, v39

    aput-wide v37, p1, v0

    aput-wide v40, p1, v3

    aput-wide v13, p1, v6

    aput-wide v16, p1, v9

    aput-wide v25, p1, v12

    aput-wide v28, p1, v15

    aput-wide v1, p1, v18

    aput-wide v4, p1, v21

    aput-wide v31, p1, v24

    aput-wide v34, p1, v27

    aput-wide v7, p1, v30

    aput-wide v10, p1, v33

    aput-wide v19, p1, v36

    aput-wide v22, p1, v39

    return-void
.end method

.method private d([DI[DI)V
    .locals 58

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v2, p4, 0x4

    aget-wide v2, p3, v2

    add-int/lit8 v4, p4, 0x5

    aget-wide v4, p3, v4

    add-int/lit8 v6, p2, 0x0

    aget-wide v7, p1, v6

    add-int/lit8 v9, p2, 0x9

    aget-wide v10, p1, v9

    sub-double/2addr v7, v10

    add-int/lit8 v10, p2, 0x1

    aget-wide v11, p1, v10

    add-int/lit8 v13, p2, 0x8

    aget-wide v14, p1, v13

    add-double/2addr v11, v14

    aget-wide v14, p1, v6

    aget-wide v16, p1, v9

    add-double v14, v14, v16

    aget-wide v16, p1, v10

    aget-wide v18, p1, v13

    sub-double v16, v16, v18

    add-int/lit8 v18, p2, 0x4

    aget-wide v19, p1, v18

    add-int/lit8 v21, p2, 0xd

    aget-wide v22, p1, v21

    sub-double v19, v19, v22

    add-int/lit8 v22, p2, 0x5

    aget-wide v23, p1, v22

    add-int/lit8 v25, p2, 0xc

    aget-wide v26, p1, v25

    add-double v23, v23, v26

    sub-double v26, v19, v23

    mul-double v26, v26, v0

    add-double v23, v23, v19

    mul-double v23, v23, v0

    aget-wide v19, p1, v18

    aget-wide v28, p1, v21

    add-double v19, v19, v28

    aget-wide v28, p1, v22

    aget-wide v30, p1, v25

    sub-double v28, v28, v30

    sub-double v30, v19, v28

    mul-double v30, v30, v0

    add-double v28, v28, v19

    mul-double v0, v0, v28

    add-int/lit8 v19, p2, 0x2

    aget-wide v28, p1, v19

    add-int/lit8 v20, p2, 0xb

    aget-wide v32, p1, v20

    sub-double v28, v28, v32

    add-int/lit8 v32, p2, 0x3

    aget-wide v33, p1, v32

    add-int/lit8 v35, p2, 0xa

    aget-wide v36, p1, v35

    add-double v33, v33, v36

    mul-double v36, v2, v28

    mul-double v38, v4, v33

    sub-double v36, v36, v38

    mul-double v33, v33, v2

    mul-double v28, v28, v4

    add-double v33, v33, v28

    aget-wide v28, p1, v19

    aget-wide v38, p1, v20

    add-double v28, v28, v38

    aget-wide v38, p1, v32

    aget-wide v40, p1, v35

    sub-double v38, v38, v40

    mul-double v40, v4, v28

    mul-double v42, v2, v38

    sub-double v40, v40, v42

    mul-double v38, v38, v4

    mul-double v28, v28, v2

    add-double v38, v38, v28

    add-int/lit8 v28, p2, 0x6

    aget-wide v42, p1, v28

    add-int/lit8 v29, p2, 0xf

    aget-wide v44, p1, v29

    sub-double v42, v42, v44

    add-int/lit8 v44, p2, 0x7

    aget-wide v45, p1, v44

    add-int/lit8 v47, p2, 0xe

    aget-wide v48, p1, v47

    add-double v45, v45, v48

    mul-double v48, v4, v42

    mul-double v50, v2, v45

    sub-double v48, v48, v50

    mul-double v45, v45, v4

    mul-double v42, v42, v2

    add-double v45, v45, v42

    aget-wide v42, p1, v28

    aget-wide v50, p1, v29

    add-double v42, v42, v50

    aget-wide v50, p1, v44

    aget-wide v52, p1, v47

    sub-double v50, v50, v52

    mul-double v52, v2, v42

    mul-double v54, v4, v50

    sub-double v52, v52, v54

    mul-double v2, v2, v50

    mul-double v4, v4, v42

    add-double/2addr v2, v4

    add-double v4, v7, v26

    add-double v42, v11, v23

    add-double v50, v36, v48

    add-double v54, v33, v45

    add-double v56, v4, v50

    aput-wide v56, p1, v6

    add-double v56, v42, v54

    aput-wide v56, p1, v10

    sub-double v4, v4, v50

    aput-wide v4, p1, v19

    sub-double v42, v42, v54

    aput-wide v42, p1, v32

    sub-double v7, v7, v26

    sub-double v11, v11, v23

    sub-double v36, v36, v48

    sub-double v33, v33, v45

    sub-double v4, v7, v33

    aput-wide v4, p1, v18

    add-double v4, v11, v36

    aput-wide v4, p1, v22

    add-double v7, v7, v33

    aput-wide v7, p1, v28

    sub-double v11, v11, v36

    aput-wide v11, p1, v44

    sub-double v4, v14, v0

    add-double v6, v16, v30

    sub-double v10, v40, v52

    sub-double v18, v38, v2

    add-double v22, v4, v10

    aput-wide v22, p1, v13

    add-double v12, v6, v18

    aput-wide v12, p1, v9

    sub-double/2addr v4, v10

    aput-wide v4, p1, v35

    sub-double v6, v6, v18

    aput-wide v6, p1, v20

    add-double/2addr v14, v0

    sub-double v16, v16, v30

    add-double v40, v40, v52

    add-double v38, v38, v2

    sub-double v0, v14, v38

    aput-wide v0, p1, v25

    add-double v0, v16, v40

    aput-wide v0, p1, v21

    add-double v14, v14, v38

    aput-wide v14, p1, v47

    sub-double v16, v16, v40

    aput-wide v16, p1, v29

    return-void
.end method

.method private e(I[DII[D)V
    .locals 1

    const/16 v0, 0x80

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, p4, -0x8

    invoke-direct {p0, p2, p3, p5, p1}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a([DI[DI)V

    add-int/lit8 v0, p3, 0x20

    add-int/lit8 p4, p4, -0x20

    invoke-direct {p0, p2, v0, p5, p4}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b([DI[DI)V

    add-int/lit8 p4, p3, 0x40

    invoke-direct {p0, p2, p4, p5, p1}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a([DI[DI)V

    add-int/lit8 p3, p3, 0x60

    invoke-direct {p0, p2, p3, p5, p1}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a([DI[DI)V

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, -0x10

    invoke-direct {p0, p2, p3, p5, p4}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->c([DI[DI)V

    add-int/lit8 p1, p3, 0x10

    invoke-direct {p0, p2, p1, p5, p4}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->d([DI[DI)V

    add-int/lit8 p1, p3, 0x20

    invoke-direct {p0, p2, p1, p5, p4}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->c([DI[DI)V

    add-int/lit8 p3, p3, 0x30

    invoke-direct {p0, p2, p3, p5, p4}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->c([DI[DI)V

    :goto_0
    return-void
.end method

.method private e([D)V
    .locals 26

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    const/4 v3, 0x4

    aget-wide v4, p1, v3

    add-double/2addr v1, v4

    const/4 v4, 0x1

    aget-wide v5, p1, v4

    const/4 v7, 0x5

    aget-wide v8, p1, v7

    add-double/2addr v5, v8

    aget-wide v8, p1, v0

    aget-wide v10, p1, v3

    sub-double/2addr v8, v10

    aget-wide v10, p1, v4

    aget-wide v12, p1, v7

    sub-double/2addr v10, v12

    const/4 v12, 0x2

    aget-wide v13, p1, v12

    const/4 v15, 0x6

    aget-wide v16, p1, v15

    add-double v13, v13, v16

    const/16 v16, 0x3

    aget-wide v17, p1, v16

    const/16 v19, 0x7

    aget-wide v20, p1, v19

    add-double v17, v17, v20

    aget-wide v20, p1, v12

    aget-wide v22, p1, v15

    sub-double v20, v20, v22

    aget-wide v22, p1, v16

    aget-wide v24, p1, v19

    sub-double v22, v22, v24

    add-double v24, v1, v13

    aput-wide v24, p1, v0

    add-double v24, v5, v17

    aput-wide v24, p1, v4

    sub-double/2addr v1, v13

    aput-wide v1, p1, v3

    sub-double v5, v5, v17

    aput-wide v5, p1, v7

    sub-double v0, v8, v22

    aput-wide v0, p1, v12

    add-double v0, v10, v20

    aput-wide v0, p1, v16

    add-double v8, v8, v22

    aput-wide v8, p1, v15

    sub-double v10, v10, v20

    aput-wide v10, p1, v19

    return-void
.end method

.method private f(I[DII[D)V
    .locals 1

    const/16 v0, 0x80

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, p4, -0x8

    invoke-direct {p0, p2, p3, p5, p1}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a([DI[DI)V

    add-int/lit8 v0, p3, 0x20

    add-int/lit8 p4, p4, -0x20

    invoke-direct {p0, p2, v0, p5, p4}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b([DI[DI)V

    add-int/lit8 v0, p3, 0x40

    invoke-direct {p0, p2, v0, p5, p1}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a([DI[DI)V

    add-int/lit8 p3, p3, 0x60

    invoke-direct {p0, p2, p3, p5, p4}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b([DI[DI)V

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, -0x10

    invoke-direct {p0, p2, p3, p5, p4}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->c([DI[DI)V

    add-int/lit8 p1, p3, 0x10

    invoke-direct {p0, p2, p1, p5, p4}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->d([DI[DI)V

    add-int/lit8 p1, p3, 0x20

    invoke-direct {p0, p2, p1, p5, p4}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->c([DI[DI)V

    add-int/lit8 p3, p3, 0x30

    invoke-direct {p0, p2, p3, p5, p4}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->d([DI[DI)V

    :goto_0
    return-void
.end method

.method private f([D)V
    .locals 26

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    const/4 v3, 0x4

    aget-wide v4, p1, v3

    add-double/2addr v1, v4

    const/4 v4, 0x1

    aget-wide v5, p1, v4

    const/4 v7, 0x5

    aget-wide v8, p1, v7

    add-double/2addr v5, v8

    aget-wide v8, p1, v0

    aget-wide v10, p1, v3

    sub-double/2addr v8, v10

    aget-wide v10, p1, v4

    aget-wide v12, p1, v7

    sub-double/2addr v10, v12

    const/4 v12, 0x2

    aget-wide v13, p1, v12

    const/4 v15, 0x6

    aget-wide v16, p1, v15

    add-double v13, v13, v16

    const/16 v16, 0x3

    aget-wide v17, p1, v16

    const/16 v19, 0x7

    aget-wide v20, p1, v19

    add-double v17, v17, v20

    aget-wide v20, p1, v12

    aget-wide v22, p1, v15

    sub-double v20, v20, v22

    aget-wide v22, p1, v16

    aget-wide v24, p1, v19

    sub-double v22, v22, v24

    add-double v24, v1, v13

    aput-wide v24, p1, v0

    add-double v24, v5, v17

    aput-wide v24, p1, v4

    sub-double/2addr v1, v13

    aput-wide v1, p1, v3

    sub-double v5, v5, v17

    aput-wide v5, p1, v7

    add-double v0, v8, v22

    aput-wide v0, p1, v12

    sub-double v0, v10, v20

    aput-wide v0, p1, v16

    sub-double v8, v8, v22

    aput-wide v8, p1, v15

    add-double v10, v10, v20

    aput-wide v10, p1, v19

    return-void
.end method

.method private g([D)V
    .locals 12

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    const/4 v3, 0x2

    aget-wide v4, p1, v3

    sub-double/2addr v1, v4

    const/4 v4, 0x1

    aget-wide v5, p1, v4

    const/4 v7, 0x3

    aget-wide v8, p1, v7

    sub-double/2addr v5, v8

    aget-wide v8, p1, v0

    aget-wide v10, p1, v3

    add-double/2addr v8, v10

    aput-wide v8, p1, v0

    aget-wide v8, p1, v4

    aget-wide v10, p1, v7

    add-double/2addr v8, v10

    aput-wide v8, p1, v4

    aput-wide v1, p1, v3

    aput-wide v5, p1, v7

    return-void
.end method


# virtual methods
.method public rdft(II[D[I[D)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    const/4 v10, 0x0

    aget v0, v6, v10

    shl-int/lit8 v1, v0, 0x2

    if-le v8, v1, :cond_0

    shr-int/lit8 v0, v8, 0x2

    invoke-direct {v7, v0, v6, v9}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[I[D)V

    :cond_0
    move v11, v0

    const/4 v12, 0x1

    aget v0, v6, v12

    shl-int/lit8 v1, v0, 0x2

    if-le v8, v1, :cond_1

    shr-int/lit8 v0, v8, 0x2

    invoke-direct {v7, v0, v6, v9, v11}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[I[DI)V

    :cond_1
    move v13, v0

    const/4 v0, 0x4

    if-ltz p2, :cond_4

    if-le v8, v0, :cond_2

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move v5, v11

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[D[III[D)V

    move v3, v13

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->c(I[DI[DI)V

    goto :goto_0

    :cond_2
    if-ne v8, v0, :cond_3

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move v5, v11

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->a(I[D[III[D)V

    :cond_3
    :goto_0
    aget-wide v0, p3, v10

    aget-wide v2, p3, v12

    sub-double/2addr v0, v2

    aget-wide v2, p3, v10

    aget-wide v4, p3, v12

    add-double/2addr v2, v4

    aput-wide v2, p3, v10

    aput-wide v0, p3, v12

    goto :goto_2

    :cond_4
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    aget-wide v3, p3, v10

    aget-wide v14, p3, v12

    sub-double/2addr v3, v14

    mul-double/2addr v3, v1

    aput-wide v3, p3, v12

    aget-wide v1, p3, v10

    aget-wide v3, p3, v12

    sub-double/2addr v1, v3

    aput-wide v1, p3, v10

    if-le v8, v0, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move v3, v13

    move-object/from16 v4, p5

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->d(I[DI[DI)V

    const/4 v4, 0x2

    move-object/from16 v3, p4

    :goto_1
    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->b(I[D[III[D)V

    goto :goto_2

    :cond_5
    if-ne v8, v0, :cond_6

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move v5, v11

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method
