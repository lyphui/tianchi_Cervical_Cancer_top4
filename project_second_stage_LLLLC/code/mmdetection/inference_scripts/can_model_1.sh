


CONFIG_DIR="/home/admin/jupyter/Projects/project_second_stage_LLLLC/code/mmdetection/configs/Candida/faster_rcnn_dconv_c3-c5_r50_fpn_1x_3000-2000_mine.py"
CHECKPOINT="/home/admin/jupyter/Projects/project_second_stage_LLLLC/code/mmdetection/models/models_for_inference/Candida/faster_rcnn_dconv_c3-c5_r50_fpn_1x_3000-2000_mine/epoch_30.pth"
SRC_IMAGE_ROOT="/home/admin/jupyter/Data/test/"
DST_FOLDER_NAME="can_model_1"
DST_TXT_ROOT="/home/admin/jupyter/Projects/project_second_stage_LLLLC/user_data/prediction/pred_txt/${DST_FOLDER_NAME}"

WIN_SIZE=3000
WIN_STRIDE=1500
LABEL_OFFSET=4



START_ID=0
END_ID=350
python ./gen_pred_bbox.py \
    ${CONFIG_DIR} ${CHECKPOINT} \
    --src_image_root ${SRC_IMAGE_ROOT} --dst_txt_root ${DST_TXT_ROOT} \
    --pred_img_interval ${START_ID} ${END_ID} \
    --sliding_win_size ${WIN_SIZE} ${WIN_SIZE} \
    --sliding_win_stride ${WIN_STRIDE} ${WIN_STRIDE} \
    --label_offset ${LABEL_OFFSET} \

