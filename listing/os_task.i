#line 1 "..\\code\\UCOSII\\SOURCE\\os_task.c"





















 

#line 1 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"




















 












 







 

#line 1 "..\\code\\application\\app_cfg.h"







 








											 










 
					









 
void Start_Task(void *p_arg);



#line 45 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"
#line 1 "..\\code\\application\\os_cfg.h"






















 





                                        










                                        













                                        





                                        
#line 73 "..\\code\\application\\os_cfg.h"


                                        
#line 83 "..\\code\\application\\os_cfg.h"


                                        
#line 93 "..\\code\\application\\os_cfg.h"


                                        





                                        






                                        
#line 118 "..\\code\\application\\os_cfg.h"


                                        
#line 127 "..\\code\\application\\os_cfg.h"


                                        






                                        







	 	   	  		 			 	    		   		 		 	 	 			 	    		   	 			 	  	 		 				 		  			 		 					 	  	  		      		  	   		      		  	 		 	      		   		 		  	 		 	      		  		  		  
#line 46 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"
#line 1 "..\\code\\UCOSII\\PORTS\\os_cpu.h"






















 
















 

typedef unsigned char  BOOLEAN;
typedef unsigned char  INT8U;                     
typedef signed   char  INT8S;                     
typedef unsigned short INT16U;                    
typedef signed   short INT16S;                    
typedef unsigned int   INT32U;                    
typedef signed   int   INT32S;                    
typedef float          FP32;                      
typedef double         FP64;                      

typedef unsigned int   OS_STK;                    
typedef unsigned int   OS_CPU_SR;                 





















 












 









 


OS_CPU_SR  OS_CPU_SR_Save(void);
void       OS_CPU_SR_Restore(OS_CPU_SR cpu_sr);


void       OSCtxSw(void);
void       OSIntCtxSw(void);
void       OSStartHighRdy(void);

void       OS_CPU_PendSVHandler(void);

                                                   



                                                   

#line 47 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 




























#line 88 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"









 




 
#line 111 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"







 








 
#line 134 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"


                                             





 

























 











 









 









 









 









 












 









 


#line 255 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 266 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"













#line 293 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 300 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 311 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"



#line 320 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"



#line 337 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

 




 


typedef  INT8U    OS_PRIO;





typedef struct os_event {
    INT8U    OSEventType;                     
    void    *OSEventPtr;                      
    INT16U   OSEventCnt;                      
    OS_PRIO  OSEventGrp;                      
    OS_PRIO  OSEventTbl[((63u) / 8u + 1u)];   




} OS_EVENT;







 








typedef  INT16U   OS_FLAGS;







typedef struct os_flag_grp {                 
    INT8U         OSFlagType;                
    void         *OSFlagWaitList;            
    OS_FLAGS      OSFlagFlags;               

    INT8U        *OSFlagName;

} OS_FLAG_GRP;



typedef struct os_flag_node {                
    void         *OSFlagNodeNext;            
    void         *OSFlagNodePrev;            
    void         *OSFlagNodeTCB;             
    void         *OSFlagNodeFlagGrp;         
    OS_FLAGS      OSFlagNodeFlags;           
    INT8U         OSFlagNodeWaitType;        
                                             
                                             
                                             
                                             
} OS_FLAG_NODE;


 




 


typedef struct os_mbox_data {
    void   *OSMsg;                          
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];  
    OS_PRIO OSEventGrp;                     
} OS_MBOX_DATA;






 

#line 455 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

 




 


typedef struct os_mutex_data {
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];   
    OS_PRIO OSEventGrp;                      
    BOOLEAN OSValue;                         
    INT8U   OSOwnerPrio;                     
    INT8U   OSMutexPIP;                      
} OS_MUTEX_DATA;






 


typedef struct os_q {                    
    struct os_q   *OSQPtr;               
    void         **OSQStart;             
    void         **OSQEnd;               
    void         **OSQIn;                
    void         **OSQOut;               
    INT16U         OSQSize;              
    INT16U         OSQEntries;           
} OS_Q;


typedef struct os_q_data {
    void          *OSMsg;                
    INT16U         OSNMsgs;              
    INT16U         OSQSize;              
    OS_PRIO        OSEventTbl[((63u) / 8u + 1u)];   
    OS_PRIO        OSEventGrp;           
} OS_Q_DATA;






 


typedef struct os_sem_data {
    INT16U  OSCnt;                           
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];   
    OS_PRIO OSEventGrp;                      
} OS_SEM_DATA;






 


typedef struct os_stk_data {
    INT32U  OSFree;                     
    INT32U  OSUsed;                     
} OS_STK_DATA;


 




 

typedef struct os_tcb {
    OS_STK          *OSTCBStkPtr;            


    void            *OSTCBExtPtr;            
    OS_STK          *OSTCBStkBottom;         
    INT32U           OSTCBStkSize;           
    INT16U           OSTCBOpt;               
    INT16U           OSTCBId;                


    struct os_tcb   *OSTCBNext;              
    struct os_tcb   *OSTCBPrev;              


    OS_EVENT        *OSTCBEventPtr;          







    void            *OSTCBMsg;               




    OS_FLAG_NODE    *OSTCBFlagNode;          

    OS_FLAGS         OSTCBFlagsRdy;          


    INT32U           OSTCBDly;               
    INT8U            OSTCBStat;              
    INT8U            OSTCBStatPend;          
    INT8U            OSTCBPrio;              

    INT8U            OSTCBX;                 
    INT8U            OSTCBY;                 
    OS_PRIO          OSTCBBitX;              
    OS_PRIO          OSTCBBitY;              


    INT8U            OSTCBDelReq;            



    INT32U           OSTCBCtxSwCtr;          
    INT32U           OSTCBCyclesTot;         
    INT32U           OSTCBCyclesStart;       
    OS_STK          *OSTCBStkBase;           
    INT32U           OSTCBStkUsed;           



    INT8U           *OSTCBTaskName;



    INT32U           OSTCBRegTbl[1u];

} OS_TCB;

 




 

#line 636 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

 




 

extern  INT32U            OSCtxSwCtr;                


extern  OS_EVENT         *OSEventFreeList;           
extern  OS_EVENT          OSEventTbl[10u]; 



extern  OS_FLAG_GRP       OSFlagTbl[5u];   
extern  OS_FLAG_GRP      *OSFlagFreeList;            



extern  INT8U             OSCPUUsage;                
extern  INT32U            OSIdleCtrMax;              
extern  INT32U            OSIdleCtrRun;              
extern  BOOLEAN           OSStatRdy;                 
extern  OS_STK            OSTaskStatStk[128u];       


extern  INT8U             OSIntNesting;              

extern  INT8U             OSLockNesting;             

extern  INT8U             OSPrioCur;                 
extern  INT8U             OSPrioHighRdy;             

extern  OS_PRIO           OSRdyGrp;                         
extern  OS_PRIO           OSRdyTbl[((63u) / 8u + 1u)];        

extern  BOOLEAN           OSRunning;                        

extern  INT8U             OSTaskCtr;                        

extern  volatile  INT32U  OSIdleCtr;                                  





extern  OS_STK            OSTaskIdleStk[128u];       


extern  OS_TCB           *OSTCBCur;                         
extern  OS_TCB           *OSTCBFreeList;                    
extern  OS_TCB           *OSTCBHighRdy;                     
extern  OS_TCB           *OSTCBList;                        
extern  OS_TCB           *OSTCBPrioTbl[63u + 1u];     
extern  OS_TCB            OSTCBTbl[5u + 2u];    


extern  INT8U             OSTickStepState;           








extern  OS_Q             *OSQFreeList;               
extern  OS_Q              OSQTbl[4u];         



extern  volatile  INT32U  OSTime;                    


#line 726 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

extern  INT8U   const     OSUnMapTbl[256];           

 





 





 



#line 754 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 762 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"







 




OS_FLAGS      OSFlagAccept            (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            wait_type,
                                       INT8U           *perr);


OS_FLAG_GRP  *OSFlagCreate            (OS_FLAGS         flags,
                                       INT8U           *perr);


OS_FLAG_GRP  *OSFlagDel               (OS_FLAG_GRP     *pgrp,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSFlagNameGet           (OS_FLAG_GRP     *pgrp,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSFlagNameSet           (OS_FLAG_GRP     *pgrp,
                                       INT8U           *pname,
                                       INT8U           *perr);


OS_FLAGS      OSFlagPend              (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            wait_type,
                                       INT32U           timeout,
                                       INT8U           *perr);

OS_FLAGS      OSFlagPendGetFlagsRdy   (void);
OS_FLAGS      OSFlagPost              (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            opt,
                                       INT8U           *perr);


OS_FLAGS      OSFlagQuery             (OS_FLAG_GRP     *pgrp,
                                       INT8U           *perr);







 




void         *OSMboxAccept            (OS_EVENT        *pevent);


OS_EVENT     *OSMboxCreate            (void            *pmsg);


OS_EVENT     *OSMboxDel               (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void         *OSMboxPend              (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSMboxPendAbort         (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSMboxPost              (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSMboxPostOpt           (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            opt);



INT8U         OSMboxQuery             (OS_EVENT        *pevent,
                                       OS_MBOX_DATA    *p_mbox_data);







 

#line 897 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 




BOOLEAN       OSMutexAccept           (OS_EVENT        *pevent,
                                       INT8U           *perr);


OS_EVENT     *OSMutexCreate           (INT8U            prio,
                                       INT8U           *perr);


OS_EVENT     *OSMutexDel              (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void          OSMutexPend             (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);

INT8U         OSMutexPost             (OS_EVENT        *pevent);


INT8U         OSMutexQuery            (OS_EVENT        *pevent,
                                       OS_MUTEX_DATA   *p_mutex_data);




 




 




void         *OSQAccept               (OS_EVENT        *pevent,
                                       INT8U           *perr);


OS_EVENT     *OSQCreate               (void           **start,
                                       INT16U           size);


OS_EVENT     *OSQDel                  (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSQFlush                (OS_EVENT        *pevent);


void         *OSQPend                 (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSQPendAbort            (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSQPost                 (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSQPostFront            (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSQPostOpt              (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            opt);



INT8U         OSQQuery                (OS_EVENT        *pevent,
                                       OS_Q_DATA       *p_q_data);




 




 



INT16U        OSSemAccept             (OS_EVENT        *pevent);


OS_EVENT     *OSSemCreate             (INT16U           cnt);


OS_EVENT     *OSSemDel                (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void          OSSemPend               (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSSemPendAbort          (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


INT8U         OSSemPost               (OS_EVENT        *pevent);


INT8U         OSSemQuery              (OS_EVENT        *pevent,
                                       OS_SEM_DATA     *p_sem_data);



void          OSSemSet                (OS_EVENT        *pevent,
                                       INT16U           cnt,
                                       INT8U           *perr);




 




 

INT8U         OSTaskChangePrio        (INT8U            oldprio,
                                       INT8U            newprio);



INT8U         OSTaskCreate            (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT8U            prio);



INT8U         OSTaskCreateExt         (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT8U            prio,
                                       INT16U           id,
                                       OS_STK          *pbos,
                                       INT32U           stk_size,
                                       void            *pext,
                                       INT16U           opt);



INT8U         OSTaskDel               (INT8U            prio);
INT8U         OSTaskDelReq            (INT8U            prio);



INT8U         OSTaskNameGet           (INT8U            prio,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSTaskNameSet           (INT8U            prio,
                                       INT8U           *pname,
                                       INT8U           *perr);



INT8U         OSTaskResume            (INT8U            prio);
INT8U         OSTaskSuspend           (INT8U            prio);



INT8U         OSTaskStkChk            (INT8U            prio,
                                       OS_STK_DATA     *p_stk_data);



INT8U         OSTaskQuery             (INT8U            prio,
                                       OS_TCB          *p_task_data);





INT32U        OSTaskRegGet            (INT8U            prio,
                                       INT8U            id,
                                       INT8U           *perr);

void          OSTaskRegSet            (INT8U            prio,
                                       INT8U            id,
                                       INT32U           value,
                                       INT8U           *perr);


 




 

void          OSTimeDly               (INT32U           ticks);


INT8U         OSTimeDlyHMSM           (INT8U            hours,
                                       INT8U            minutes,
                                       INT8U            seconds,
                                       INT16U           ms);



INT8U         OSTimeDlyResume         (INT8U            prio);



INT32U        OSTimeGet               (void);
void          OSTimeSet               (INT32U           ticks);


void          OSTimeTick              (void);





 

#line 1177 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 

void          OSInit                  (void);

void          OSIntEnter              (void);
void          OSIntExit               (void);






void          OSSchedLock             (void);
void          OSSchedUnlock           (void);


void          OSStart                 (void);

void          OSStatInit              (void);

INT16U        OSVersion               (void);

 





 


void          OS_Dummy                (void);



INT8U         OS_EventTaskRdy         (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            msk,
                                       INT8U            pend_stat);

void          OS_EventTaskWait        (OS_EVENT        *pevent);

void          OS_EventTaskRemove      (OS_TCB          *ptcb,
                                       OS_EVENT        *pevent);

#line 1233 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

void          OS_EventWaitListInit    (OS_EVENT        *pevent);



void          OS_FlagInit             (void);
void          OS_FlagUnlink           (OS_FLAG_NODE    *pnode);


void          OS_MemClr               (INT8U           *pdest,
                                       INT16U           size);

void          OS_MemCopy              (INT8U           *pdest,
                                       INT8U           *psrc,
                                       INT16U           size);






void          OS_QInit                (void);


void          OS_Sched                (void);


INT8U         OS_StrLen               (INT8U           *psrc);


void          OS_TaskIdle             (void            *p_arg);

void          OS_TaskReturn           (void);


void          OS_TaskStat             (void            *p_arg);



void          OS_TaskStkClr           (OS_STK          *pbos,
                                       INT32U           size,
                                       INT16U           opt);



void          OS_TaskStatStkChk       (void);


INT8U         OS_TCBInit              (INT8U            prio,
                                       OS_STK          *ptos,
                                       OS_STK          *pbos,
                                       INT16U           id,
                                       INT32U           stk_size,
                                       void            *pext,
                                       INT16U           opt);





 





 





void          OSInitHookBegin         (void);
void          OSInitHookEnd           (void);

void          OSTaskCreateHook        (OS_TCB          *ptcb);
void          OSTaskDelHook           (OS_TCB          *ptcb);

void          OSTaskIdleHook          (void);

void          OSTaskReturnHook        (OS_TCB          *ptcb);

void          OSTaskStatHook          (void);
OS_STK       *OSTaskStkInit           (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT16U           opt);


void          OSTaskSwHook            (void);


void          OSTCBInitHook           (OS_TCB          *ptcb);


void          OSTimeTickHook          (void);


 





 

#line 1358 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"







 







 










 





 

#line 1402 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






























 

#line 1440 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"


























 

#line 1478 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"














 

#line 1500 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"














 

#line 1526 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






































 

#line 1572 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






















 

#line 1602 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"























































#line 1664 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 





















 

#line 1737 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






 


























#line 1777 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"



































 

#line 1889 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






	 	   	  		 			 	    		   		 		 	 	 			 	    		   	 			 	  	 		 				 		  			 		 					 	  	  		      		  	   		      		  	 		 	      		   		 		  	 		 	      		  		  		  
#line 26 "..\\code\\UCOSII\\SOURCE\\os_task.c"


 



















 


INT8U  OSTaskChangePrio (INT8U  oldprio,
                         INT8U  newprio)
{

    OS_EVENT  *pevent;




    OS_TCB    *ptcb;
    INT8U      y_new;
    INT8U      x_new;
    INT8U      y_old;
    OS_PRIO    bity_new;
    OS_PRIO    bitx_new;
    OS_PRIO    bity_old;
    OS_PRIO    bitx_old;

    OS_CPU_SR  cpu_sr = 0u;                                  



 
#line 84 "..\\code\\UCOSII\\SOURCE\\os_task.c"
    {cpu_sr = OS_CPU_SR_Save();};
    if (OSTCBPrioTbl[newprio] != (OS_TCB *)0) {              
        {OS_CPU_SR_Restore(cpu_sr);};
        return (40u);
    }
    if (oldprio == 0xFFu) {                           
        oldprio = OSTCBCur->OSTCBPrio;                       
    }
    ptcb = OSTCBPrioTbl[oldprio];
    if (ptcb == (OS_TCB *)0) {                               
        {OS_CPU_SR_Restore(cpu_sr);};                                  
        return (41u);
    }
    if (ptcb == ((OS_TCB *)1)) {                           
        {OS_CPU_SR_Restore(cpu_sr);};                                  
        return (67u);
    }

    y_new                 = (INT8U)(newprio >> 3u);          
    x_new                 = (INT8U)(newprio & 0x07u);




    bity_new              = (OS_PRIO)(1uL << y_new);
    bitx_new              = (OS_PRIO)(1uL << x_new);

    OSTCBPrioTbl[oldprio] = (OS_TCB *)0;                     
    OSTCBPrioTbl[newprio] =  ptcb;                           
    y_old                 =  ptcb->OSTCBY;
    bity_old              =  ptcb->OSTCBBitY;
    bitx_old              =  ptcb->OSTCBBitX;
    if ((OSRdyTbl[y_old] &   bitx_old) != 0u) {              
         OSRdyTbl[y_old] &= (OS_PRIO)~bitx_old;
         if (OSRdyTbl[y_old] == 0u) {
             OSRdyGrp &= (OS_PRIO)~bity_old;
         }
         OSRdyGrp        |= bity_new;                        
         OSRdyTbl[y_new] |= bitx_new;
    }


    pevent = ptcb->OSTCBEventPtr;
    if (pevent != (OS_EVENT *)0) {
        pevent->OSEventTbl[y_old] &= (OS_PRIO)~bitx_old;     
        if (pevent->OSEventTbl[y_old] == 0u) {
            pevent->OSEventGrp    &= (OS_PRIO)~bity_old;
        }
        pevent->OSEventGrp        |= bity_new;               
        pevent->OSEventTbl[y_new] |= bitx_new;
    }
#line 152 "..\\code\\UCOSII\\SOURCE\\os_task.c"

    ptcb->OSTCBPrio = newprio;                               
    ptcb->OSTCBY    = y_new;
    ptcb->OSTCBX    = x_new;
    ptcb->OSTCBBitY = bity_new;
    ptcb->OSTCBBitX = bitx_new;
    {OS_CPU_SR_Restore(cpu_sr);};
    if (OSRunning == 1u) {
        OS_Sched();                                          
    }
    return (0u);
}

 






































 


INT8U  OSTaskCreate (void   (*task)(void *p_arg),
                     void    *p_arg,
                     OS_STK  *ptos,
                     INT8U    prio)
{
    OS_STK    *psp;
    INT8U      err;

    OS_CPU_SR  cpu_sr = 0u;















    {cpu_sr = OS_CPU_SR_Save();};
    if (OSIntNesting > 0u) {                  
        {OS_CPU_SR_Restore(cpu_sr);};
        return (60u);
    }
    if (OSTCBPrioTbl[prio] == (OS_TCB *)0) {  
        OSTCBPrioTbl[prio] = ((OS_TCB *)1); 
                                              
        {OS_CPU_SR_Restore(cpu_sr);};
        psp = OSTaskStkInit(task, p_arg, ptos, 0u);              
        err = OS_TCBInit(prio, psp, (OS_STK *)0, 0u, 0u, (void *)0, 0u);
        if (err == 0u) {
            if (OSRunning == 1u) {       
                OS_Sched();
            }
        } else {
            {cpu_sr = OS_CPU_SR_Save();};
            OSTCBPrioTbl[prio] = (OS_TCB *)0; 
            {OS_CPU_SR_Restore(cpu_sr);};
        }
        return (err);
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    return (40u);
}

 




































































 
 

INT8U  OSTaskCreateExt (void   (*task)(void *p_arg),
                        void    *p_arg,
                        OS_STK  *ptos,
                        INT8U    prio,
                        INT16U   id,
                        OS_STK  *pbos,
                        INT32U   stk_size,
                        void    *pext,
                        INT16U   opt)
{
    OS_STK    *psp;
    INT8U      err;

    OS_CPU_SR  cpu_sr = 0u;















    {cpu_sr = OS_CPU_SR_Save();};
    if (OSIntNesting > 0u) {                  
        {OS_CPU_SR_Restore(cpu_sr);};
        return (60u);
    }
    if (OSTCBPrioTbl[prio] == (OS_TCB *)0) {  
        OSTCBPrioTbl[prio] = ((OS_TCB *)1); 
                                              
        {OS_CPU_SR_Restore(cpu_sr);};


        OS_TaskStkClr(pbos, stk_size, opt);                     


        psp = OSTaskStkInit(task, p_arg, ptos, opt);            
        err = OS_TCBInit(prio, psp, pbos, id, stk_size, pext, opt);
        if (err == 0u) {
            if (OSRunning == 1u) {                         
                OS_Sched();
            }
        } else {
            {cpu_sr = OS_CPU_SR_Save();};
            OSTCBPrioTbl[prio] = (OS_TCB *)0;                   
            {OS_CPU_SR_Restore(cpu_sr);};
        }
        return (err);
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    return (40u);
}

 


































 


INT8U  OSTaskDel (INT8U prio)
{

    OS_FLAG_NODE *pnode;

    OS_TCB       *ptcb;

    OS_CPU_SR     cpu_sr = 0u;




    if (OSIntNesting > 0u) {                             
        return (64u);
    }
    if (prio == (63u)) {                     
        return (62u);
    }
#line 452 "..\\code\\UCOSII\\SOURCE\\os_task.c"

 
    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                          
        prio = OSTCBCur->OSTCBPrio;                      
    }
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                           
        {OS_CPU_SR_Restore(cpu_sr);};
        return (67u);
    }
    if (ptcb == ((OS_TCB *)1)) {                       
        {OS_CPU_SR_Restore(cpu_sr);};
        return (61u);
    }

    OSRdyTbl[ptcb->OSTCBY] &= (OS_PRIO)~ptcb->OSTCBBitX;
    if (OSRdyTbl[ptcb->OSTCBY] == 0u) {                  
        OSRdyGrp           &= (OS_PRIO)~ptcb->OSTCBBitY;
    }


    if (ptcb->OSTCBEventPtr != (OS_EVENT *)0) {
        OS_EventTaskRemove(ptcb, ptcb->OSTCBEventPtr);   
    }
#line 483 "..\\code\\UCOSII\\SOURCE\\os_task.c"


    pnode = ptcb->OSTCBFlagNode;
    if (pnode != (OS_FLAG_NODE *)0) {                    
        OS_FlagUnlink(pnode);                            
    }


    ptcb->OSTCBDly      = 0u;                            
    ptcb->OSTCBStat     = 0x00u;                   
    ptcb->OSTCBStatPend = 0u;
    if (OSLockNesting < 255u) {                          
        OSLockNesting++;
    }
    {OS_CPU_SR_Restore(cpu_sr);};                                  
    OS_Dummy();                                          
    {cpu_sr = OS_CPU_SR_Save();};                                 
    if (OSLockNesting > 0u) {                            
        OSLockNesting--;
    }
    OSTaskDelHook(ptcb);                                 
    OSTaskCtr--;                                         
    OSTCBPrioTbl[prio] = (OS_TCB *)0;                    
    if (ptcb->OSTCBPrev == (OS_TCB *)0) {                
        ptcb->OSTCBNext->OSTCBPrev = (OS_TCB *)0;
        OSTCBList                  = ptcb->OSTCBNext;
    } else {
        ptcb->OSTCBPrev->OSTCBNext = ptcb->OSTCBNext;
        ptcb->OSTCBNext->OSTCBPrev = ptcb->OSTCBPrev;
    }
    ptcb->OSTCBNext     = OSTCBFreeList;                 
    OSTCBFreeList       = ptcb;

    ptcb->OSTCBTaskName = (INT8U *)(void *)"?";

    {OS_CPU_SR_Restore(cpu_sr);};
    if (OSRunning == 1u) {
        OS_Sched();                                      
    }
    return (0u);
}

 












































 
 

INT8U  OSTaskDelReq (INT8U prio)
{
    INT8U      stat;
    OS_TCB    *ptcb;

    OS_CPU_SR  cpu_sr = 0u;




    if (prio == (63u)) {                             
        return (62u);
    }
#line 593 "..\\code\\UCOSII\\SOURCE\\os_task.c"
    if (prio == 0xFFu) {                                  
        {cpu_sr = OS_CPU_SR_Save();};                                     
        stat = OSTCBCur->OSTCBDelReq;                            
        {OS_CPU_SR_Restore(cpu_sr);};
        return (stat);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                                   
        {OS_CPU_SR_Restore(cpu_sr);};
        return (67u);                          
    }
    if (ptcb == ((OS_TCB *)1)) {                               
        {OS_CPU_SR_Restore(cpu_sr);};
        return (61u);
    }
    ptcb->OSTCBDelReq = 63u;                     
    {OS_CPU_SR_Restore(cpu_sr);};
    return (0u);
}

 






















 


INT8U  OSTaskNameGet (INT8U    prio,
                      INT8U  **pname,
                      INT8U   *perr)
{
    OS_TCB    *ptcb;
    INT8U      len;

    OS_CPU_SR  cpu_sr = 0u;










#line 670 "..\\code\\UCOSII\\SOURCE\\os_task.c"
    if (OSIntNesting > 0u) {                               
        *perr = 17u;
        return (0u);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                           
        prio = OSTCBCur->OSTCBPrio;
    }
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                            
        {OS_CPU_SR_Restore(cpu_sr);};                               
        *perr = 67u;
        return (0u);
    }
    if (ptcb == ((OS_TCB *)1)) {                        
        {OS_CPU_SR_Restore(cpu_sr);};                               
        *perr = 67u;
        return (0u);
    }
    *pname = ptcb->OSTCBTaskName;
    len    = OS_StrLen(*pname);
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr  = 0u;
    return (len);
}


 





















 

void  OSTaskNameSet (INT8U   prio,
                     INT8U  *pname,
                     INT8U  *perr)
{
    OS_TCB    *ptcb;

    OS_CPU_SR  cpu_sr = 0u;










#line 750 "..\\code\\UCOSII\\SOURCE\\os_task.c"
    if (OSIntNesting > 0u) {                          
        *perr = 18u;
        return;
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                       
        prio = OSTCBCur->OSTCBPrio;
    }
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                        
        {OS_CPU_SR_Restore(cpu_sr);};                           
        *perr = 67u;
        return;
    }
    if (ptcb == ((OS_TCB *)1)) {                    
        {OS_CPU_SR_Restore(cpu_sr);};                           
        *perr = 67u;
        return;
    }
    ptcb->OSTCBTaskName = pname;
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr               = 0u;
}


 
















 


INT8U  OSTaskResume (INT8U prio)
{
    OS_TCB    *ptcb;

    OS_CPU_SR  cpu_sr = 0u;









    {cpu_sr = OS_CPU_SR_Save();};
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                                 
        {OS_CPU_SR_Restore(cpu_sr);};
        return (70u);
    }
    if (ptcb == ((OS_TCB *)1)) {                             
        {OS_CPU_SR_Restore(cpu_sr);};
        return (67u);
    }
    if ((ptcb->OSTCBStat & 0x08u) != 0x00u) {  
        ptcb->OSTCBStat &= (INT8U)~(INT8U)0x08u;     
        if (ptcb->OSTCBStat == 0x00u) {                  
            if (ptcb->OSTCBDly == 0u) {
                OSRdyGrp               |= ptcb->OSTCBBitY;     
                OSRdyTbl[ptcb->OSTCBY] |= ptcb->OSTCBBitX;
                {OS_CPU_SR_Restore(cpu_sr);};
                if (OSRunning == 1u) {
                    OS_Sched();                                
                }
            } else {
                {OS_CPU_SR_Restore(cpu_sr);};
            }
        } else {                                               
            {OS_CPU_SR_Restore(cpu_sr);};
        }
        return (0u);
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    return (68u);
}

 


















 

INT8U  OSTaskStkChk (INT8U         prio,
                     OS_STK_DATA  *p_stk_data)
{
    OS_TCB    *ptcb;
    OS_STK    *pchk;
    INT32U     nfree;
    INT32U     size;

    OS_CPU_SR  cpu_sr = 0u;




#line 885 "..\\code\\UCOSII\\SOURCE\\os_task.c"
    p_stk_data->OSFree = 0u;                            
    p_stk_data->OSUsed = 0u;
    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                         
        prio = OSTCBCur->OSTCBPrio;
    }
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                          
        {OS_CPU_SR_Restore(cpu_sr);};
        return (67u);
    }
    if (ptcb == ((OS_TCB *)1)) {
        {OS_CPU_SR_Restore(cpu_sr);};
        return (67u);
    }
    if ((ptcb->OSTCBOpt & 0x0001u) == 0u) {  
        {OS_CPU_SR_Restore(cpu_sr);};
        return (69u);
    }
    nfree = 0u;
    size  = ptcb->OSTCBStkSize;
    pchk  = ptcb->OSTCBStkBottom;
    {OS_CPU_SR_Restore(cpu_sr);};

    while (*pchk++ == (OS_STK)0) {                     
        nfree++;
    }





    p_stk_data->OSFree = nfree * sizeof(OS_STK);           
    p_stk_data->OSUsed = (size - nfree) * sizeof(OS_STK);  
    return (0u);
}

 





















 


INT8U  OSTaskSuspend (INT8U prio)
{
    BOOLEAN    self;
    OS_TCB    *ptcb;
    INT8U      y;

    OS_CPU_SR  cpu_sr = 0u;




#line 968 "..\\code\\UCOSII\\SOURCE\\os_task.c"
    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                                  
        prio = OSTCBCur->OSTCBPrio;
        self = 1u;
    } else if (prio == OSTCBCur->OSTCBPrio) {                    
        self = 1u;
    } else {
        self = 0u;                                         
    }
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                                   
        {OS_CPU_SR_Restore(cpu_sr);};
        return (72u);
    }
    if (ptcb == ((OS_TCB *)1)) {                               
        {OS_CPU_SR_Restore(cpu_sr);};
        return (67u);
    }
    y            = ptcb->OSTCBY;
    OSRdyTbl[y] &= (OS_PRIO)~ptcb->OSTCBBitX;                    
    if (OSRdyTbl[y] == 0u) {
        OSRdyGrp &= (OS_PRIO)~ptcb->OSTCBBitY;
    }
    ptcb->OSTCBStat |= 0x08u;                          
    {OS_CPU_SR_Restore(cpu_sr);};
    if (self == 1u) {                                       
        OS_Sched();                                              
    }
    return (0u);
}

 

















 


INT8U  OSTaskQuery (INT8U    prio,
                    OS_TCB  *p_task_data)
{
    OS_TCB    *ptcb;

    OS_CPU_SR  cpu_sr = 0u;




#line 1040 "..\\code\\UCOSII\\SOURCE\\os_task.c"
    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                   
        prio = OSTCBCur->OSTCBPrio;
    }
    ptcb = OSTCBPrioTbl[prio];
    if (ptcb == (OS_TCB *)0) {                    
        {OS_CPU_SR_Restore(cpu_sr);};
        return (41u);
    }
    if (ptcb == ((OS_TCB *)1)) {                
        {OS_CPU_SR_Restore(cpu_sr);};
        return (67u);
    }
                                                  
    OS_MemCopy((INT8U *)p_task_data, (INT8U *)ptcb, sizeof(OS_TCB));
    {OS_CPU_SR_Restore(cpu_sr);};
    return (0u);
}

 
























 


INT32U  OSTaskRegGet (INT8U   prio,
                      INT8U   id,
                      INT8U  *perr)
{

    OS_CPU_SR  cpu_sr = 0u;

    INT32U     value;
    OS_TCB    *ptcb;


#line 1110 "..\\code\\UCOSII\\SOURCE\\os_task.c"
    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                   
        ptcb = OSTCBCur;
    } else {
        ptcb = OSTCBPrioTbl[prio];
    }
    value = ptcb->OSTCBRegTbl[id];
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr = 0u;
    return (value);
}


 


























 


void  OSTaskRegSet (INT8U    prio,
                    INT8U    id,
                    INT32U   value,
                    INT8U   *perr)
{

    OS_CPU_SR  cpu_sr = 0u;

    OS_TCB    *ptcb;


#line 1176 "..\\code\\UCOSII\\SOURCE\\os_task.c"
    {cpu_sr = OS_CPU_SR_Save();};
    if (prio == 0xFFu) {                   
        ptcb = OSTCBCur;
    } else {
        ptcb = OSTCBPrioTbl[prio];
    }
    ptcb->OSTCBRegTbl[id] = value;
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr                 = 0u;
}


 













 

void  OS_TaskReturn (void)
{
    OSTaskReturnHook(OSTCBCur);                    


    (void)OSTaskDel(0xFFu);                 





}

 





















 

void  OS_TaskStkClr (OS_STK  *pbos,
                     INT32U   size,
                     INT16U   opt)
{
    if ((opt & 0x0001u) != 0x0000u) {       
        if ((opt & 0x0002u) != 0x0000u) {   

            while (size > 0u) {                         
                size--;
                *pbos++ = (OS_STK)0;                    
            }
#line 1258 "..\\code\\UCOSII\\SOURCE\\os_task.c"
        }
    }
}


	 	   	  		 			 	    		   		 		 	 	 			 	    		   	 			 	  	 		 				 		  			 		 					 	  	  		      		  	   		      		  	 		 	      		   		 		  	 		 	      		  		  		  
